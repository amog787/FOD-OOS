.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZILandroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$1:Z

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$3:Landroid/content/Context;

    iput-wide p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$4:J

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$1:Z

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$2:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$3:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk;->f$4:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setExpirationAlarmCheckLocked$1$DevicePolicyManagerService(ZILandroid/content/Context;J)V

    return-void
.end method
