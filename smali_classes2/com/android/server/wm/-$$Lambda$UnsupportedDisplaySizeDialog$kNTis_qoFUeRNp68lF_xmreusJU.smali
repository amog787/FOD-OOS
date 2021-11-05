.class public final synthetic Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;->f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;->f$1:Lcom/android/server/wm/AppWarnings;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;->f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;->f$1:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->lambda$new$0$UnsupportedDisplaySizeDialog(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
