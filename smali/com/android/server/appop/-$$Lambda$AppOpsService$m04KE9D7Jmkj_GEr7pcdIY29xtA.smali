.class public final synthetic Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;

    invoke-direct {v0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;-><init>()V

    sput-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/appop/AppOpsService;

    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->lambda$m04KE9D7Jmkj_GEr7pcdIY29xtA(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;

    return-void
.end method
