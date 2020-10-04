.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$leWA95COTthWNYtDKcdKVChlc-c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/om/DumpState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/DumpState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$leWA95COTthWNYtDKcdKVChlc-c;->f$0:Lcom/android/server/om/DumpState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$leWA95COTthWNYtDKcdKVChlc-c;->f$0:Lcom/android/server/om/DumpState;

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$7(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p1

    return p1
.end method
