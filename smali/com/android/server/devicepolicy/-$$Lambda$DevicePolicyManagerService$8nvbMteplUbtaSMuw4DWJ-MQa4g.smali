.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8nvbMteplUbtaSMuw4DWJ-MQa4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8nvbMteplUbtaSMuw4DWJ-MQa4g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8nvbMteplUbtaSMuw4DWJ-MQa4g;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8nvbMteplUbtaSMuw4DWJ-MQa4g;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8nvbMteplUbtaSMuw4DWJ-MQa4g;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8nvbMteplUbtaSMuw4DWJ-MQa4g;

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

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getPasswordMinimumNonLetter$8(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
