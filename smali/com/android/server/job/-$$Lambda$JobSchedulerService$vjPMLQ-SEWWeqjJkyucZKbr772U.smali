.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/utils/quota/Categorizer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;

    invoke-direct {v0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;-><init>()V

    sput-object v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;->INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p1

    return-object p1
.end method
