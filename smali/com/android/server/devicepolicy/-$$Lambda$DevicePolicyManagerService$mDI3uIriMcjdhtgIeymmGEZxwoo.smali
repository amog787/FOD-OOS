.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$3:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo;->f$3:Ljava/util/function/Predicate;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getActiveAdminsForUserAndItsManagedProfilesLocked$11$DevicePolicyManagerService(ILjava/util/ArrayList;Ljava/util/function/Predicate;)V

    return-void
.end method
