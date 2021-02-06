.class public final synthetic Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->lambda$new$0(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method
