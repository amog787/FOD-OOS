.class Lcom/android/server/display/OpAutoBrightnessHelper$1;
.super Landroid/os/Handler;
.source "OpAutoBrightnessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OpAutoBrightnessHelper;


# direct methods
.method constructor <init>(Lcom/android/server/display/OpAutoBrightnessHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OpAutoBrightnessHelper;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 169
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper$1;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 172
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "OpAutoBrightnessHelper"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 197
    :cond_0
    :try_start_0
    const-string v0, "Store brightness statics file."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper$1;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getStaticsFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 199
    .local v0, "file":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper$1;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$000(Lcom/android/server/display/OpAutoBrightnessHelper;)Lcom/android/server/display/BrightnessStaticBeans;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessStaticBeans;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/display/OpAutoBrightnessHelper$1;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$000(Lcom/android/server/display/OpAutoBrightnessHelper;)Lcom/android/server/display/BrightnessStaticBeans;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessStaticBeans;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 200
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 201
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "file":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to store brightness statics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/display/OpAutoBrightnessHelper$1;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-virtual {v5}, Lcom/android/server/display/OpAutoBrightnessHelper;->getStaticsFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 179
    .local v5, "temp":[B
    move v6, v2

    .line 180
    .local v6, "len":I
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v6, v7

    if-lez v7, :cond_2

    .line 181
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v2, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "temp":[B
    .end local v6    # "len":I
    goto :goto_1

    .line 184
    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Failed to read data from brightness statics file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper$1;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    new-instance v2, Lcom/android/server/display/BrightnessStaticBeans;

    invoke-direct {v2}, Lcom/android/server/display/BrightnessStaticBeans;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$002(Lcom/android/server/display/OpAutoBrightnessHelper;Lcom/android/server/display/BrightnessStaticBeans;)Lcom/android/server/display/BrightnessStaticBeans;

    goto :goto_2

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper$1;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    new-instance v2, Lcom/android/server/display/BrightnessStaticBeans;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/display/BrightnessStaticBeans;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$002(Lcom/android/server/display/OpAutoBrightnessHelper;Lcom/android/server/display/BrightnessStaticBeans;)Lcom/android/server/display/BrightnessStaticBeans;

    .line 194
    nop

    .line 209
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void
.end method
