.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final USB_BLACKLIST_INPUT:I = 0x2

.field private static final USB_BLACKLIST_OUTPUT:I = 0x1

.field private static final USB_PRODUCTID_PS4CONTROLLER_ZCT1:I = 0x5c4

.field private static final USB_PRODUCTID_PS4CONTROLLER_ZCT2:I = 0x9cc

.field private static final USB_VENDORID_SONY:I = 0x54c

.field private static final mIsSingleMode:Z = true

.field static final sDeviceBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlsaDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbAlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mHasMidiFeature:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

.field private mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    const/16 v2, 0x54c

    const/16 v3, 0x5c4

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;-><init>(III)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    const/16 v3, 0x9cc

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;-><init>(III)V

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceBlacklist:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 120
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 122
    return-void
.end method

.method private declared-synchronized deselectAlsaDevice()V
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->stop()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAlsaDeviceListIndexFor(Ljava/lang/String;)I
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return v0

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static isDeviceBlacklisted(III)Z
    .locals 4
    .param p0, "vendorId"    # I
    .param p1, "productId"    # I
    .param p2, "flags"    # I

    .line 100
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    .line 101
    .local v1, "entry":Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;
    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mVendorId:I

    if-ne v3, p0, :cond_1

    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mProductId:I

    if-ne v3, p1, :cond_1

    .line 103
    iget v0, v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 105
    .end local v1    # "entry":Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;
    :cond_1
    goto :goto_0

    .line 107
    :cond_2
    return v2
.end method

.method private removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getAlsaDeviceListIndexFor(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    return-object v1

    .line 187
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 3
    .param p1, "alsaDevice"    # Lcom/android/server/usb/UsbAlsaDevice;

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 150
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_audio_automatic_routing_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .local v0, "isDisabled":I
    if-eqz v0, :cond_1

    .line 153
    monitor-exit p0

    return-void

    .line 156
    .restart local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 157
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "isDisabled":I
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    .end local p1    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 10
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 367
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 369
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    move-result v2

    const-string v3, "cards_parser"

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 371
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbAlsaDevice;

    .line 372
    .local v3, "usbAlsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    const-wide v4, 0x20b00000002L

    const-string v6, "alsa_devices"

    invoke-virtual {v3, p1, v6, v4, v5}, Lcom/android/server/usb/UsbAlsaDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 373
    .end local v3    # "usbAlsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    goto :goto_0

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    .local v3, "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbMidiDevice;

    const-wide v8, 0x20b00000003L

    const-string v7, "midi_devices"

    move-object v5, v3

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usb/UsbMidiDevice;->dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 379
    .end local v3    # "deviceAddr":Ljava/lang/String;
    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 382
    return-void
.end method

.method public logDevices(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 405
    return-void
.end method

.method public logDevicesList(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 394
    return-void
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 201
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 204
    :cond_0
    return-object v0

    .line 206
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method setPeripheralMidiState(ZII)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .line 326
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v0, "properties":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 333
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1040802

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const v2, 0x1040801

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "manufacturer"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const v2, 0x1040803

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "product"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "alsa_card"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v2, "alsa_device"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0

    .line 342
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz v0, :cond_2

    .line 343
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_1

    .line 342
    :cond_2
    :goto_0
    nop

    .line 346
    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 125
    nop

    .line 126
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 127
    return-void
.end method

.method usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 18
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 218
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    .line 221
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 222
    invoke-virtual {v1, v10}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v11

    .line 223
    .local v11, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    if-nez v11, :cond_0

    .line 224
    return-void

    .line 228
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasInput()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceBlacklisted(III)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v12

    :goto_0
    move v13, v1

    .line 231
    .local v13, "hasInput":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasOutput()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceBlacklisted(III)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v12

    :goto_1
    move v14, v2

    .line 237
    .local v14, "hasOutput":Z
    if-nez v13, :cond_3

    if-eqz v14, :cond_5

    .line 238
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v15

    .line 239
    .local v15, "isInputHeadset":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v16

    .line 241
    .local v16, "isOutputHeadset":Z
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v2, :cond_4

    .line 242
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string v2, "no AudioService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 246
    :cond_4
    new-instance v17, Lcom/android/server/usb/UsbAlsaDevice;

    .line 247
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v1, v17

    move-object/from16 v5, p1

    move v6, v14

    move v7, v13

    move v8, v15

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZ)V

    .line 250
    .local v1, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    nop

    .line 251
    nop

    .line 252
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 254
    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 259
    .end local v1    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    .end local v15    # "isInputHeadset":Z
    .end local v16    # "isOutputHeadset":Z
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v1

    .line 263
    .local v1, "hasMidi":Z
    if-eqz v1, :cond_a

    iget-boolean v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-eqz v2, :cond_a

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "device":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v3, "properties":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "manufacturer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "product":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, "version":Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    .line 272
    :cond_6
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    .line 275
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "name":Ljava/lang/String;
    goto :goto_4

    .line 273
    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    move-object v7, v4

    .restart local v7    # "name":Ljava/lang/String;
    goto :goto_4

    .line 271
    .end local v7    # "name":Ljava/lang/String;
    :cond_9
    :goto_3
    move-object v7, v5

    .line 277
    .restart local v7    # "name":Ljava/lang/String;
    :goto_4
    const-string v8, "name"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v8, "manufacturer"

    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v8, "product"

    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v8, "version"

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    nop

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    .line 281
    const-string v9, "serial_number"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v8

    const-string v9, "alsa_card"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v8, "alsa_device"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v8, "usb_device"

    move-object/from16 v9, p2

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    iget-object v8, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v15

    .line 287
    invoke-static {v8, v3, v15, v12}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v8

    .line 289
    .local v8, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v8, :cond_b

    .line 290
    iget-object v12, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v12, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 263
    .end local v2    # "device":I
    .end local v3    # "properties":Landroid/os/Bundle;
    .end local v4    # "manufacturer":Ljava/lang/String;
    .end local v5    # "product":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    :cond_a
    move-object/from16 v9, p2

    .line 294
    :cond_b
    :goto_5
    const-string v2, "deviceAdded()"

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    monitor-enter p0

    .line 307
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    move-result-object v0

    .line 308
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB Audio Device Removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-ne v0, v1, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 311
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;

    .line 315
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbMidiDevice;

    .line 316
    .local v1, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v1, :cond_1

    .line 317
    sget-object v2, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB MIDI Device Removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 321
    :cond_1
    const-string v2, "usbDeviceRemoved()"

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 306
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    .end local v1    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
