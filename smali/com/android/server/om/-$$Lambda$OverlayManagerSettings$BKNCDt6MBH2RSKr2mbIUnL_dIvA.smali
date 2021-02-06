.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerSettings;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;

.field public final synthetic f$2:Lcom/android/server/om/DumpState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    iput-object p2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    iput-object p3, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;->f$2:Lcom/android/server/om/DumpState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;->f$2:Lcom/android/server/om/DumpState;

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$8$OverlayManagerSettings(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method
