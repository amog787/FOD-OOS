.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;

    invoke-direct {v0}, Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;-><init>()V

    sput-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/content/SyncOperation;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z

    move-result p1

    return p1
.end method
