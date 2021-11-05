.class public final synthetic Lcom/android/server/-$$Lambda$OiriEnuntH0IJYDPdRjKdzSjR0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$OiriEnuntH0IJYDPdRjKdzSjR0o;->f$0:Lcom/android/server/UiThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$OiriEnuntH0IJYDPdRjKdzSjR0o;->f$0:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
