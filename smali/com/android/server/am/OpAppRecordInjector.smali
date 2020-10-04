.class public Lcom/android/server/am/OpAppRecordInjector;
.super Ljava/lang/Object;
.source "OpAppRecordInjector.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final HOLD:I = 0x1

.field public static final KILL_AMS:I = 0x4

.field public static final KILL_BY_USER:I = 0x9

.field public static final KILL_CACHE:I = 0x5

.field public static final KILL_DUMP:I = 0xa

.field public static final KILL_EMPTY:I = 0x6

.field public static final KILL_EXCEPTION:I = 0xb

.field public static final KILL_HIGH_POWER:I = 0x3

.field public static final KILL_ISOLATE:I = 0x7

.field public static final KILL_LMK:I = 0x2

.field public static final KILL_OMM:I = 0x1

.field public static final KILL_TOP:I = 0x8

.field public static final KILL_UNKOWN:I = 0x0

.field public static final NOT_HOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpAppRecordInjector"

.field private static sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIsolatedUid(II)V
    .locals 1
    .param p0, "isolatedUid"    # I
    .param p1, "appUid"    # I

    .line 249
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 250
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->addIsolatedUid(II)V

    .line 253
    :cond_0
    return-void
.end method

.method public static dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 335
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 336
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 339
    :cond_0
    return-void
.end method

.method public static initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 65
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static initEnv(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 58
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->initEnv(Landroid/content/Context;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static initInstance()V
    .locals 1

    .line 49
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apprecord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 51
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppRecord;

    sput-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    .line 54
    :cond_0
    return-void
.end method

.method public static noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "using"    # Z

    .line 342
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 343
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteBluetoothConnectedChanged(Ljava/lang/String;Z)V

    .line 346
    :cond_0
    return-void
.end method

.method public static noteFlashlightOff(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 205
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 206
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteFlashlightOff(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public static noteFlashlightOn(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 198
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 199
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteFlashlightOn(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public static noteFloatWindowChange(Ljava/lang/String;IIZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "hasFloatWin"    # Z

    .line 328
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 329
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteFloatWindowChange(Ljava/lang/String;IIZ)V

    .line 332
    :cond_0
    return-void
.end method

.method public static noteFreezeStateChange(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "isFreeze"    # Z

    .line 299
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 300
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteFreezeStateChange(IZ)V

    .line 303
    :cond_0
    return-void
.end method

.method public static noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "lpackageName"    # Ljava/lang/String;
    .param p4, "luid"    # I
    .param p5, "lpid"    # I

    .line 307
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 308
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 309
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/am/IOpAppRecord;->noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    .line 311
    :cond_0
    return-void
.end method

.method public static noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "isHighUsedApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 292
    .local p0, "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 293
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V

    .line 296
    :cond_0
    return-void
.end method

.method public static noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "isNoClear"    # Z

    .line 321
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 322
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    .line 325
    :cond_0
    return-void
.end method

.method public static notePSSChanged(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 278
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 279
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->notePSSChanged(II)V

    .line 282
    :cond_0
    return-void
.end method

.method public static notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "pause"    # Z

    .line 241
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 242
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    :cond_0
    return-void
.end method

.method public static notePredctionAppChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "isPredctionApp"    # Z

    .line 285
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 286
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->notePredctionAppChanged(Ljava/lang/String;Z)V

    .line 289
    :cond_0
    return-void
.end method

.method public static noteResetAudio()V
    .locals 1

    .line 131
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 132
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetAudio()V

    .line 135
    :cond_0
    return-void
.end method

.method public static noteResetCamera()V
    .locals 1

    .line 190
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 191
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetCamera()V

    .line 194
    :cond_0
    return-void
.end method

.method public static noteResetFlashlight()V
    .locals 1

    .line 212
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 213
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetFlashlight()V

    .line 216
    :cond_0
    return-void
.end method

.method public static noteResetVideo()V
    .locals 1

    .line 168
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 169
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetVideo()V

    .line 172
    :cond_0
    return-void
.end method

.method public static noteRfcommSocketToServiceRecord(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 349
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 350
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteRfcommSocketToServiceRecord(II)V

    .line 353
    :cond_0
    return-void
.end method

.method public static noteStartAudio(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 117
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 118
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartAudio(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public static noteStartAudio(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 103
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 104
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartAudio(II)V

    .line 107
    :cond_0
    return-void
.end method

.method public static noteStartCamera(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 176
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 177
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartCamera(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public static noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "intervalMs"    # J

    .line 227
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 228
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    :cond_0
    return-void
.end method

.method public static noteStartSensor(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "sensor"    # I

    .line 73
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 74
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartSensor(II)V

    .line 77
    :cond_0
    return-void
.end method

.method public static noteStartVideo(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 154
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 155
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartVideo(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public static noteStartVideo(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 139
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 140
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartVideo(II)V

    .line 143
    :cond_0
    return-void
.end method

.method public static noteStopAudio(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 124
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 125
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopAudio(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public static noteStopAudio(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 110
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 111
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopAudio(II)V

    .line 114
    :cond_0
    return-void
.end method

.method public static noteStopCamera(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 183
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 184
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopCamera(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public static noteStopGps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;

    .line 234
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 235
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopGps(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method public static noteStopSensor(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "sensor"    # I

    .line 80
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 81
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopSensor(II)V

    .line 84
    :cond_0
    return-void
.end method

.method public static noteStopVideo(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 161
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 162
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopVideo(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public static noteStopVideo(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 146
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 147
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopVideo(II)V

    .line 150
    :cond_0
    return-void
.end method

.method public static noteUserLockAppChanged(Ljava/lang/String;IZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userid"    # I
    .param p2, "isUserLock"    # Z

    .line 314
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 315
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->noteUserLockAppChanged(Ljava/lang/String;IZ)V

    .line 318
    :cond_0
    return-void
.end method

.method public static noteVibratorOff(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 95
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 96
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteVibratorOff(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public static noteVibratorOn(IJ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "durationMillis"    # J

    .line 88
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 89
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->noteVibratorOn(IJ)V

    .line 92
    :cond_0
    return-void
.end method

.method public static processDie(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "pid"    # I

    .line 271
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 272
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->processDie(Lcom/android/server/am/ProcessRecord;I)V

    .line 275
    :cond_0
    return-void
.end method

.method public static processStart(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "pid"    # I

    .line 264
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 265
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->processStart(Lcom/android/server/am/ProcessRecord;I)V

    .line 268
    :cond_0
    return-void
.end method

.method public static removeIsolatedUid(I)V
    .locals 1
    .param p0, "isolatedUid"    # I

    .line 256
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 257
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->removeIsolatedUid(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public static schedulePerformPoll()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 220
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->schedulePerformPoll()V

    .line 223
    :cond_0
    return-void
.end method
