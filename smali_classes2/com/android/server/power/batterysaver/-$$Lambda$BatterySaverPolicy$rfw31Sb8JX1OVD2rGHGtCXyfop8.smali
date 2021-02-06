.class public final synthetic Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$rfw31Sb8JX1OVD2rGHGtCXyfop8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$rfw31Sb8JX1OVD2rGHGtCXyfop8;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-void
.end method


# virtual methods
.method public final onAccessibilityStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$rfw31Sb8JX1OVD2rGHGtCXyfop8;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->lambda$systemReady$0$BatterySaverPolicy(Z)V

    return-void
.end method
