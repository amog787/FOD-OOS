.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->lambda$requestsSortedById$2(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)I

    move-result p1

    return p1
.end method
