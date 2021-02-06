.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;

    invoke-direct {v0}, Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;-><init>()V

    sput-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
