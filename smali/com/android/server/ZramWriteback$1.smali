.class Lcom/android/server/ZramWriteback$1;
.super Ljava/lang/Thread;
.source "ZramWriteback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ZramWriteback;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZramWriteback;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/server/ZramWriteback;Ljava/lang/String;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZramWriteback;
    .param p2, "x0"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    iput-object p3, p0, Lcom/android/server/ZramWriteback$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->access$000(Lcom/android/server/ZramWriteback;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->access$100(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    iget-object v1, p0, Lcom/android/server/ZramWriteback$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ZramWriteback;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 152
    return-void
.end method
