.class Lcom/android/server/LocationManagerService$LinkedListener;
.super Lcom/android/server/LocationManagerService$LinkedListenerBase;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/LocationManagerService$LinkedListenerBase;"
    }
.end annotation


# instance fields
.field private final mBinderDeathCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V
    .locals 1
    .param p2, "listenerName"    # Ljava/lang/String;
    .param p3, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Ljava/lang/String;",
            "Lcom/android/server/location/CallerIdentity;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 3245
    .local p0, "this":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .local p1, "listener":Ljava/lang/Object;, "TTListener;"
    .local p4, "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Lcom/android/server/LocationManagerService$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 3246
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LinkedListener;->mListener:Ljava/lang/Object;

    .line 3247
    iput-object p4, p0, Lcom/android/server/LocationManagerService$LinkedListener;->mBinderDeathCallback:Ljava/util/function/Consumer;

    .line 3248
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/location/CallerIdentity;
    .param p4, "x3"    # Ljava/util/function/Consumer;
    .param p5, "x4"    # Lcom/android/server/LocationManagerService$1;

    .line 3238
    .local p0, "this":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 3252
    .local p0, "this":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LinkedListener;->mListenerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LinkedListener;->mBinderDeathCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LinkedListener;->mListener:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3254
    return-void
.end method
