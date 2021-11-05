.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;

    invoke-direct {v0}, Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;-><init>()V

    sput-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/content/SyncOperation;

    check-cast p2, Lcom/android/server/content/SyncOperation;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I

    move-result p1

    return p1
.end method
