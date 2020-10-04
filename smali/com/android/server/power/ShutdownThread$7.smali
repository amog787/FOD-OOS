.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 981
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 4
    .param p1, "status"    # I

    .line 984
    const/16 v0, 0x64

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 986
    int-to-double v0, p1

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 987
    add-int/lit8 p1, p1, 0x14

    .line 988
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040612

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 990
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 991
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040614

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 994
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 998
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :goto_0
    return-void
.end method
