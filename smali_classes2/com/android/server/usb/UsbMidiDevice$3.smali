.class Lcom/android/server/usb/UsbMidiDevice$3;
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

.field final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field final synthetic val$portF:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    iput-object p4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iput p5, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 266
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    .local v0, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    nop

    .line 271
    const-string v1, "UsbMidiDevice"

    if-nez v0, :cond_0

    .line 272
    nop

    .line 281
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    const-string v0, "output thread exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 275
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iget-object v3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    goto :goto_1

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write failed for port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 280
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
