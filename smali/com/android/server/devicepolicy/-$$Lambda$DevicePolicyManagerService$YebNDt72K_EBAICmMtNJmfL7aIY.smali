.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$YebNDt72K_EBAICmMtNJmfL7aIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$YebNDt72K_EBAICmMtNJmfL7aIY;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$YebNDt72K_EBAICmMtNJmfL7aIY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$YebNDt72K_EBAICmMtNJmfL7aIY;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$YebNDt72K_EBAICmMtNJmfL7aIY;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setAutoTimeZoneEnabled$43$DevicePolicyManagerService(Z)V

    return-void
.end method
