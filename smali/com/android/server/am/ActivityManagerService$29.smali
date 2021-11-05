.class Lcom/android/server/am/ActivityManagerService$29;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 22231
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22232
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$29;->count:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 22234
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 22235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show PCB No. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$29;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22238
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "com.qualcomm.qcnvitems.QcNvItems"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$2202(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Class;)Ljava/lang/Class;

    .line 22240
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getPcbNumber"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 22241
    .local v0, "getGetPcbNumber":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 22242
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2400(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/server/am/ActivityManagerService;->access$2302(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 22243
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 22244
    const/4 v3, -0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 22245
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/am/ActivityManagerService;->access$2302(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 22247
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 22251
    :cond_2
    iput v4, p0, Lcom/android/server/am/ActivityManagerService$29;->count:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "getGetPcbNumber":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 22264
    :catch_0
    move-exception v0

    .line 22265
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 22256
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 22257
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 22259
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$29;->count:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ActivityManagerService$29;->count:I

    .line 22260
    if-ltz v3, :cond_3

    .line 22261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retry count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$29;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22262
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$29;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$29;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 22254
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 22255
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 22252
    :catch_3
    move-exception v0

    .line 22253
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 22268
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_3
    :goto_0
    return-void
.end method
