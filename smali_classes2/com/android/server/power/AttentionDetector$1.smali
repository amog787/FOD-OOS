.class Lcom/android/server/power/AttentionDetector$1;
.super Landroid/database/ContentObserver;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/AttentionDetector;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/AttentionDetector;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    iput-object p3, p0, Lcom/android/server/power/AttentionDetector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 180
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 181
    return-void
.end method
