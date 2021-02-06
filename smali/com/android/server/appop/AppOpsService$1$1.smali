.class Lcom/android/server/appop/AppOpsService$1$1;
.super Landroid/os/AsyncTask;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/appop/AppOpsService$1;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/appop/AppOpsService$1;

    .line 313
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$1$1;->this$1:Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 313
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$1$1;->this$1:Lcom/android/server/appop/AppOpsService$1;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->writeState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
