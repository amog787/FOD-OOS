.class final Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VolumeEvent"
.end annotation


# static fields
.field static final VOL_ADJUST_STREAM_VOL:I = 0x1

.field static final VOL_ADJUST_SUGG_VOL:I = 0x0

.field static final VOL_ADJUST_VOL_UID:I = 0x5

.field static final VOL_MODE_CHANGE_HEARING_AID:I = 0x7

.field static final VOL_MUTE_STREAM_INT:I = 0x9

.field static final VOL_SET_AVRCP_VOL:I = 0x4

.field static final VOL_SET_GROUP_VOL:I = 0x8

.field static final VOL_SET_HEARING_AID_VOL:I = 0x3

.field static final VOL_SET_STREAM_VOL:I = 0x2

.field static final VOL_VOICE_ACTIVITY_HEARING_AID:I = 0x6

.field private static final mMetricsId:Ljava/lang/String; = "audio.volume.event"


# instance fields
.field final mAudioAttributes:Landroid/media/AudioAttributes;

.field final mCaller:Ljava/lang/String;

.field final mGroupName:Ljava/lang/String;

.field final mOp:I

.field final mStream:I

.field final mVal1:I

.field final mVal2:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "index"    # I

    .line 196
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 197
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 198
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 204
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 205
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    .line 206
    return-void
.end method

.method constructor <init>(III)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "index"    # I
    .param p3, "gainDb"    # I

    .line 183
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 184
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 185
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 186
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 192
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    .line 193
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .param p3, "stream"    # I
    .param p4, "index"    # I

    .line 222
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 223
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 224
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 225
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 226
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 231
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    .line 232
    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "val1"    # I
    .param p4, "val2"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 172
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 173
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 174
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 175
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 176
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 179
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    .line 180
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "state"    # Z

    .line 247
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 248
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 249
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 250
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 253
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 255
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    .line 256
    return-void
.end method

.method constructor <init>(ILandroid/media/AudioAttributes;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "aa"    # Landroid/media/AudioAttributes;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "flags"    # I
    .param p6, "caller"    # Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 236
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 238
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 239
    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 240
    iput-object p6, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 243
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    .line 244
    return-void
.end method

.method constructor <init>(IZII)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "voiceActive"    # Z
    .param p3, "stream"    # I
    .param p4, "index"    # I

    .line 209
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 210
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 211
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 212
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 213
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 218
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    .line 219
    return-void
.end method

.method private logMetricEvent()V
    .locals 4

    .line 268
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    const/4 v1, 0x1

    const-string v2, "audio.volume.event"

    packed-switch v0, :pswitch_data_0

    .line 352
    return-void

    .line 339
    :pswitch_0
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ATTRIBUTES:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 340
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 342
    const-string/jumbo v2, "setVolumeIndexForAttributes"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->GROUP:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 347
    return-void

    .line 330
    :pswitch_1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 331
    const-string/jumbo v2, "modeChangeHearingAid"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 332
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 333
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 335
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 337
    return-void

    .line 320
    :pswitch_2
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 321
    const-string/jumbo v3, "voiceActivityHearingAid"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 324
    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    if-ne v3, v1, :cond_0

    const-string v1, "active"

    goto :goto_0

    :cond_0
    const-string v1, "inactive"

    .line 323
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 326
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 328
    return-void

    .line 314
    :pswitch_3
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 315
    const-string/jumbo v2, "setAvrcpVolume"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 318
    return-void

    .line 307
    :pswitch_4
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 308
    const-string/jumbo v2, "setHearingAidVolume"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->GAIN_DB:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    int-to-double v2, v2

    .line 309
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 310
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 312
    return-void

    .line 297
    :pswitch_5
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 299
    const-string/jumbo v2, "setStreamVolume"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 300
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 303
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 305
    return-void

    .line 273
    :pswitch_6
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 284
    return-void

    .line 281
    :cond_1
    const-string v0, "adjustStreamVolumeForUid"

    .line 282
    .local v0, "eventName":Ljava/lang/String;
    goto :goto_1

    .line 278
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_2
    const-string v0, "adjustStreamVolume"

    .line 279
    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 275
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_3
    const-string v0, "adjustSuggestedStreamVolume"

    .line 276
    .restart local v0    # "eventName":Ljava/lang/String;
    nop

    .line 286
    :goto_1
    new-instance v1, Landroid/media/MediaMetrics$Item;

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 287
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DIRECTION:Landroid/media/MediaMetrics$Key;

    .line 288
    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    if-lez v3, :cond_4

    const-string/jumbo v3, "up"

    goto :goto_2

    :cond_4
    const-string v3, "down"

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 289
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 292
    invoke-static {v3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 294
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 8

    .line 358
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    const-string v1, " stream:"

    const-string v2, ") causes setting HEARING_AID volume to idx:"

    const/4 v3, 0x1

    const-string v4, " dir:"

    const-string v5, " index:"

    const-string v6, ") from "

    const-string v7, " flags:0x"

    packed-switch v0, :pswitch_data_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIXME invalid op:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolumeStreamState.muteInternally(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 418
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    if-ne v1, v3, :cond_0

    const-string v1, ", muted)"

    goto :goto_0

    :cond_0
    const-string v1, ", unmuted)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    return-object v0

    .line 409
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVolumeIndexForAttributes(attr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 410
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, " group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    return-object v0

    .line 403
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMode("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 404
    invoke-static {v3}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    return-object v0

    .line 397
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Voice activity change ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    iget v4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    if-ne v4, v3, :cond_1

    const-string v3, "active"

    goto :goto_1

    :cond_1
    const-string v3, "inactive"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    return-object v0

    .line 390
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustStreamVolumeForUid(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 391
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-static {v1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    return-object v0

    .line 386
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAvrcpVolume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    return-object v0

    .line 381
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setHearingAidVolume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, " gain dB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    return-object v0

    .line 374
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setStreamVolume(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 375
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    return-object v0

    .line 367
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustStreamVolume(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 368
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-static {v1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0

    .line 360
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustSuggestedStreamVolume(sugg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 361
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-static {v1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
