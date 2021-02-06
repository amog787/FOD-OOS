.class Lcom/android/server/usb/UsbMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 213
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 217
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 218
    .local v5, "timestamp":J
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v7

    goto/16 :goto_3

    .line 222
    :cond_0
    const/4 v1, 0x0

    move v8, v1

    .local v8, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    array-length v1, v1

    if-ge v8, v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    aget-object v1, v1, v8

    move-object v9, v1

    .line 224
    .local v9, "pfd":Landroid/system/StructPollfd;
    iget-short v1, v9, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLERR:I

    sget v3, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 226
    goto :goto_2

    .line 227
    :cond_1
    iget-short v1, v9, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 229
    const/4 v1, 0x0

    iput-short v1, v9, Landroid/system/StructPollfd;->revents:S

    .line 231
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_2

    .line 233
    goto :goto_2

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 237
    .local v4, "count":I
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v8

    const/4 v3, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 222
    .end local v4    # "count":I
    .end local v9    # "pfd":Landroid/system/StructPollfd;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 240
    .end local v8    # "index":I
    :cond_4
    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    nop

    .end local v5    # "timestamp":J
    goto :goto_0

    .line 240
    .restart local v5    # "timestamp":J
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "buffer":[B
    .end local p0    # "this":Lcom/android/server/usb/UsbMidiDevice$2;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    .end local v5    # "timestamp":J
    .restart local v0    # "buffer":[B
    .restart local p0    # "this":Lcom/android/server/usb/UsbMidiDevice$2;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Landroid/system/ErrnoException;
    const-string v2, "UsbMidiDevice"

    const-string v3, "reader thread exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 245
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsbMidiDevice"

    const-string v3, "reader thread exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 250
    :goto_4
    const-string v1, "UsbMidiDevice"

    const-string v2, "input thread exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method
