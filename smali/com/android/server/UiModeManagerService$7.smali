.class Lcom/android/server/UiModeManagerService$7;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 251
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 254
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v0

    const-string v1, "Force Dark Mode change to >>>> "

    const-string v2, "OPFD_UMS"

    const-string/jumbo v3, "op_force_dark_mode"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 255
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    .line 258
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 257
    invoke-static {v0, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 262
    .local v0, "enable":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/app/IUiModeManager$Stub;->setForceDark(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "enable":Z
    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 271
    const-string/jumbo v0, "oem_black_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 273
    :try_start_1
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    .line 274
    invoke-virtual {v6}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 273
    invoke-static {v6, v0, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v5

    .line 278
    .local v0, "enable":Z
    :goto_2
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3, v5, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v5

    .line 280
    .local v3, "forceDarkStatus":Z
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v4, v5

    :goto_4
    move v0, v4

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/app/IUiModeManager$Stub;->setForceDark(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    .end local v0    # "enable":Z
    .end local v3    # "forceDarkStatus":Z
    goto :goto_5

    .line 283
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_5
    return-void
.end method
