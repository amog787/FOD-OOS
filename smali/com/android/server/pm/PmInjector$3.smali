.class Lcom/android/server/pm/PmInjector$3;
.super Ljava/lang/Object;
.source "PmInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PmInjector;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/server/pm/PmInjector$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PmInjector$3;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 782
    iget-object v0, p0, Lcom/android/server/pm/PmInjector$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PmInjector$3;->val$text:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 783
    return-void
.end method
