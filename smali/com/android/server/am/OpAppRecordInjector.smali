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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIsolatedUid(II)V
    .locals 1
    .param p0, "isolatedUid"    # I
    .param p1, "appUid"    # I

    .line 250
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 251
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->addIsolatedUid(II)V

    .line 254
    :cond_0
    return-void
.end method

.method public static dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 343
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 344
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 347
    :cond_0
    return-void
.end method

.method public static forceStopPackageSmart(Ljava/lang/String;I)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 279
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 280
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->forceStopPackageSmart(Ljava/lang/String;I)V

    .line 283
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
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 66
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static initEnv(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 59
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->initEnv(Landroid/content/Context;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static initInstance()V
    .locals 1

    .line 50
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apprecord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 52
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppRecord;

    sput-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    .line 55
    :cond_0
    return-void
.end method

.method public static noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "using"    # Z

    .line 350
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 351
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteBluetoothConnectedChanged(Ljava/lang/String;Z)V

    .line 354
    :cond_0
    return-void
.end method

.method public static noteFlashlightOff(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 206
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 207
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteFlashlightOff(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public static noteFlashlightOn(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 199
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 200
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteFlashlightOn(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public static noteFloatWindowChange(Ljava/lang/String;IIZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "hasFloatWin"    # Z

    .line 336
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 337
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteFloatWindowChange(Ljava/lang/String;IIZ)V

    .line 340
    :cond_0
    return-void
.end method

.method public static noteFreezeStateChange(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "isFreeze"    # Z

    .line 307
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 308
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteFreezeStateChange(IZ)V

    .line 311
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

    .line 315
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 316
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 317
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/am/IOpAppRecord;->noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    .line 319
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

    .line 300
    .local p0, "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 301
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public static noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "isNoClear"    # Z

    .line 329
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 330
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    .line 333
    :cond_0
    return-void
.end method

.method public static notePSSChanged(IIJ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pss"    # J

    .line 286
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 287
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->notePSSChanged(IIJ)V

    .line 290
    :cond_0
    return-void
.end method

.method public static notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "pause"    # Z

    .line 242
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 243
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public static notePredctionAppChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "isPredctionApp"    # Z

    .line 293
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 294
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->notePredctionAppChanged(Ljava/lang/String;Z)V

    .line 297
    :cond_0
    return-void
.end method

.method public static noteResetAudio()V
    .locals 1

    .line 132
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 133
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetAudio()V

    .line 136
    :cond_0
    return-void
.end method

.method public static noteResetCamera()V
    .locals 1

    .line 191
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 192
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetCamera()V

    .line 195
    :cond_0
    return-void
.end method

.method public static noteResetFlashlight()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 214
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetFlashlight()V

    .line 217
    :cond_0
    return-void
.end method

.method public static noteResetVideo()V
    .locals 1

    .line 169
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 170
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetVideo()V

    .line 173
    :cond_0
    return-void
.end method

.method public static noteRfcommSocketToServiceRecord(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 357
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 358
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteRfcommSocketToServiceRecord(II)V

    .line 361
    :cond_0
    return-void
.end method

.method public static noteStartAudio(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 118
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 119
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartAudio(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public static noteStartAudio(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 104
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 105
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartAudio(II)V

    .line 108
    :cond_0
    return-void
.end method

.method public static noteStartCamera(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 177
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 178
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartCamera(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public static noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "intervalMs"    # J

    .line 228
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 229
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V

    .line 232
    :cond_0
    return-void
.end method

.method public static noteStartSensor(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "sensor"    # I

    .line 74
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartSensor(II)V

    .line 78
    :cond_0
    return-void
.end method

.method public static noteStartVideo(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 155
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 156
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartVideo(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public static noteStartVideo(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 140
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 141
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartVideo(II)V

    .line 144
    :cond_0
    return-void
.end method

.method public static noteStopAudio(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 125
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 126
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopAudio(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public static noteStopAudio(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 111
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 112
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopAudio(II)V

    .line 115
    :cond_0
    return-void
.end method

.method public static noteStopCamera(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 184
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 185
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopCamera(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public static noteStopGps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 236
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopGps(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public static noteStopSensor(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "sensor"    # I

    .line 81
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 82
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopSensor(II)V

    .line 85
    :cond_0
    return-void
.end method

.method public static noteStopVideo(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 162
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 163
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopVideo(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public static noteStopVideo(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 147
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 148
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopVideo(II)V

    .line 151
    :cond_0
    return-void
.end method

.method public static noteUserLockAppChanged(Ljava/lang/String;IZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userid"    # I
    .param p2, "isUserLock"    # Z

    .line 322
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 323
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->noteUserLockAppChanged(Ljava/lang/String;IZ)V

    .line 326
    :cond_0
    return-void
.end method

.method public static noteVibratorOff(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 96
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 97
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteVibratorOff(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public static noteVibratorOn(IJ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "durationMillis"    # J

    .line 89
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 90
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->noteVibratorOn(IJ)V

    .line 93
    :cond_0
    return-void
.end method

.method public static processDie(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "pid"    # I

    .line 272
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 273
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->processDie(Lcom/android/server/am/ProcessRecord;I)V

    .line 276
    :cond_0
    return-void
.end method

.method public static processStart(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "pid"    # I

    .line 265
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 266
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->processStart(Lcom/android/server/am/ProcessRecord;I)V

    .line 269
    :cond_0
    return-void
.end method

.method public static removeIsolatedUid(I)V
    .locals 1
    .param p0, "isolatedUid"    # I

    .line 257
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 258
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->removeIsolatedUid(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public static schedulePerformPoll()V
    .locals 1

    .line 220
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    .line 221
    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->schedulePerformPoll()V

    .line 224
    :cond_0
    return-void
.end method
