.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$v19TUZ90g8UrLkuSM7HBbomQWrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$v19TUZ90g8UrLkuSM7HBbomQWrI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$v19TUZ90g8UrLkuSM7HBbomQWrI;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$ActivityManagerService$v19TUZ90g8UrLkuSM7HBbomQWrI;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$v19TUZ90g8UrLkuSM7HBbomQWrI;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$v19TUZ90g8UrLkuSM7HBbomQWrI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->lambda$reportMemUsage$6(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p1

    return p1
.end method
