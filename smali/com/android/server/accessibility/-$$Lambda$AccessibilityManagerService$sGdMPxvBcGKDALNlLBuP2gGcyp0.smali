.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$sGdMPxvBcGKDALNlLBuP2gGcyp0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$sGdMPxvBcGKDALNlLBuP2gGcyp0;->f$0:J

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$sGdMPxvBcGKDALNlLBuP2gGcyp0;->f$0:J

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$notifyClientsOfServicesStateChange$8(JLandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method
