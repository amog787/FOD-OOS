.class Lcom/android/server/wm/PendingRemoteAnimationRegistry;
.super Ljava/lang/Object;
.source "PendingRemoteAnimationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:J = 0xbb8L


# instance fields
.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 42
    iput-object p2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 32
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 32
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 32
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 59
    .local v0, "entry":Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
    if-nez v0, :cond_0

    .line 60
    return-object p2

    .line 62
    :cond_0
    if-nez p2, :cond_1

    .line 63
    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-static {v1}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p2
.end method
