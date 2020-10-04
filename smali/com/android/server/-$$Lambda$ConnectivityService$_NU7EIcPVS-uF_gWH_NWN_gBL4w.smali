.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;

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

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->lambda$networksSortedById$1(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result p1

    return p1
.end method
