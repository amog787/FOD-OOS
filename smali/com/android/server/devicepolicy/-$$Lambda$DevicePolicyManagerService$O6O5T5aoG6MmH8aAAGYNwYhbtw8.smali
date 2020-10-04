.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$O6O5T5aoG6MmH8aAAGYNwYhbtw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$O6O5T5aoG6MmH8aAAGYNwYhbtw8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$O6O5T5aoG6MmH8aAAGYNwYhbtw8;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$O6O5T5aoG6MmH8aAAGYNwYhbtw8;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$O6O5T5aoG6MmH8aAAGYNwYhbtw8;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$O6O5T5aoG6MmH8aAAGYNwYhbtw8;

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

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getPasswordMinimumLowerCase$4(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
