.class public final synthetic Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityManagerInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;->f$0:Landroid/app/ActivityManagerInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;->f$0:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->updateCpuStats()V

    return-void
.end method
