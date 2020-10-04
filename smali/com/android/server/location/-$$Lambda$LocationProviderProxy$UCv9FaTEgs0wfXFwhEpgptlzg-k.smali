.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BlockingBinderRunner;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;->INSTANCE:Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/location/LocationProviderProxy;->lambda$getStatusUpdateTime$2(Landroid/os/IBinder;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
