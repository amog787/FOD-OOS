.class public final synthetic Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$TaeLH3pyy18K9h_WuSYLeQFy9Io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$TaeLH3pyy18K9h_WuSYLeQFy9Io;->f$0:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$TaeLH3pyy18K9h_WuSYLeQFy9Io;->f$1:Lcom/android/server/wm/AppWarnings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$TaeLH3pyy18K9h_WuSYLeQFy9Io;->f$0:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$TaeLH3pyy18K9h_WuSYLeQFy9Io;->f$1:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->lambda$new$0$DeprecatedTargetSdkVersionDialog(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V

    return-void
.end method
