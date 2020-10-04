.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;

    invoke-direct {v0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;-><init>()V

    sput-object v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;->INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;

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

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {p1, p2}, Lcom/android/server/job/JobSchedulerService;->lambda$static$0(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    return p1
.end method
