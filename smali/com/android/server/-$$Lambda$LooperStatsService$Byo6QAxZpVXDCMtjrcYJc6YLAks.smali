.class public final synthetic Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;->INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$Byo6QAxZpVXDCMtjrcYJc6YLAks;

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

    check-cast p1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    invoke-static {p1}, Lcom/android/server/LooperStatsService;->lambda$dump$0(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
