.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$NzTaj70nEECGXhr52RbDyXK_fPU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$NzTaj70nEECGXhr52RbDyXK_fPU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$NzTaj70nEECGXhr52RbDyXK_fPU;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$NzTaj70nEECGXhr52RbDyXK_fPU;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$NzTaj70nEECGXhr52RbDyXK_fPU;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$NzTaj70nEECGXhr52RbDyXK_fPU;

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

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getPasswordMinimumLength$1(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
