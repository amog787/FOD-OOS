.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_START_UPDATE_LOCATION:I = 0x4

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final MSG_STOP_UPDATE_LOCATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TwilightService"

.field private static mContext:Landroid/content/Context; = null

.field private static mCurrentUser:I = 0x0

.field private static final mEIGHTEEN_HOUR_MILLIS:J = 0x3dcc500L

.field private static final mSIX_HOUR_MILLIS:J = 0x1499700L


# instance fields
.field protected mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasListeners:Z

.field protected mLastLocation:Landroid/location/Location;

.field protected mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation
.end field

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/twilight/TwilightListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const/16 v0, -0x2710

    sput v0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 97
    sput-object p1, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .line 53
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .line 53
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method private static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .locals 13
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "timeMillis"    # J

    .line 394
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 395
    .local v0, "noon":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 396
    const/16 v1, 0xc

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 398
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 399
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 402
    const-string/jumbo v1, "twilightstate_latitude"

    const-string/jumbo v3, "twilightstate_longitude"

    const-wide v4, 0x408f400000000000L    # 1000.0

    const-string v6, "TwilightService"

    if-nez p0, :cond_4

    .line 405
    const-string v7, "TwilightState: location == null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget v7, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    const/16 v8, -0x2710

    const-wide/32 v9, 0x3dcc500

    const-wide/32 v11, 0x1499700

    if-eq v7, v8, :cond_2

    .line 407
    sget-object v7, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget v8, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    invoke-static {v7, v3, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 409
    .local v3, "mLongitudeStoredInDatabase":I
    sget-object v7, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget v8, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    invoke-static {v7, v1, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 411
    .local v1, "mLatitudeStoredInDatabase":I
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 412
    const-string/jumbo v7, "use last storage location"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    int-to-double v6, v3

    div-double/2addr v6, v4

    .line 414
    .local v6, "mFinalLongitudeStoredInDatabase":D
    int-to-double v8, v1

    div-double/2addr v8, v4

    .line 415
    .local v8, "mFinalLatitudeStoredInDatabase":D
    new-instance v4, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 416
    .end local v6    # "mFinalLongitudeStoredInDatabase":D
    .end local v8    # "mFinalLatitudeStoredInDatabase":D
    .local v4, "ca":Landroid/icu/impl/CalendarAstronomer;
    nop

    .line 428
    .end local v1    # "mLatitudeStoredInDatabase":I
    .end local v3    # "mLongitudeStoredInDatabase":I
    goto :goto_0

    .line 417
    .end local v4    # "ca":Landroid/icu/impl/CalendarAstronomer;
    .restart local v1    # "mLatitudeStoredInDatabase":I
    .restart local v3    # "mLongitudeStoredInDatabase":I
    :cond_0
    const-string/jumbo v2, "last storage location is unuseful, use default sunrise time = 6:00, sunset time = 18:00"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 419
    .local v4, "mMoonMillis":J
    sub-long v6, v4, v11

    .line 420
    .local v6, "sunriseTimeMillis":J
    add-long/2addr v9, v4

    .line 421
    .local v9, "sunriseTimeMillis2":J
    add-long/2addr v11, v4

    .line 422
    .local v11, "sunsetTimeMillis":J
    cmp-long v2, p1, v6

    if-gez v2, :cond_1

    .line 423
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v6, v7, v11, v12}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v2

    .line 425
    :cond_1
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v9, v10, v11, v12}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v2

    .line 429
    .end local v1    # "mLatitudeStoredInDatabase":I
    .end local v3    # "mLongitudeStoredInDatabase":I
    .end local v4    # "mMoonMillis":J
    .end local v6    # "sunriseTimeMillis":J
    .end local v9    # "sunriseTimeMillis2":J
    .end local v11    # "sunsetTimeMillis":J
    :cond_2
    const-string/jumbo v1, "user is null, use default sunrise time = 6:00, sunset time = 18:00"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 431
    .local v1, "mMoonMillis":J
    sub-long v3, v1, v11

    .line 432
    .local v3, "sunriseTimeMillis":J
    add-long/2addr v9, v1

    .line 433
    .restart local v9    # "sunriseTimeMillis2":J
    add-long/2addr v11, v1

    .line 434
    .restart local v11    # "sunsetTimeMillis":J
    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    .line 435
    new-instance v5, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v5, v3, v4, v11, v12}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v5

    .line 437
    :cond_3
    new-instance v5, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v5, v9, v10, v11, v12}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v5

    .line 442
    .end local v1    # "mMoonMillis":J
    .end local v3    # "sunriseTimeMillis":J
    .end local v9    # "sunriseTimeMillis2":J
    .end local v11    # "sunsetTimeMillis":J
    :cond_4
    const-string/jumbo v7, "location != null, store current location"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    .line 444
    .local v6, "mFinalLongitudeStoredInDatabase":I
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    mul-double/2addr v7, v4

    double-to-int v4, v7

    .line 445
    .local v4, "mFinalLatitudeStoredInDatabase":I
    sget-object v5, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget v7, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    invoke-static {v5, v3, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 447
    sget-object v3, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget v5, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 449
    new-instance v1, Landroid/icu/impl/CalendarAstronomer;

    .line 450
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    move-object v4, v1

    .line 468
    .end local v6    # "mFinalLongitudeStoredInDatabase":I
    .local v4, "ca":Landroid/icu/impl/CalendarAstronomer;
    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 470
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    .line 471
    .local v5, "sunriseTimeMillis":J
    invoke-virtual {v4, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v7

    .line 473
    .local v7, "sunsetTimeMillis":J
    cmp-long v3, v7, p1

    const/4 v9, 0x5

    if-gez v3, :cond_5

    .line 474
    invoke-virtual {v0, v9, v1}, Landroid/icu/util/Calendar;->add(II)V

    .line 475
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 476
    invoke-virtual {v4, v1}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    goto :goto_1

    .line 477
    :cond_5
    cmp-long v1, v5, p1

    if-lez v1, :cond_6

    .line 478
    const/4 v1, -0x1

    invoke-virtual {v0, v9, v1}, Landroid/icu/util/Calendar;->add(II)V

    .line 479
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 480
    invoke-virtual {v4, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v7

    .line 483
    :cond_6
    :goto_1
    new-instance v1, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v1
.end method

.method private startListening()V
    .locals 3

    .line 258
    const-string v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 262
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 268
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 289
    return-void
.end method

.method private startUpdateLocationChange()V
    .locals 3

    .line 251
    const-string v0, "TwilightService"

    const-string/jumbo v1, "startUpdateLocationChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 253
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 254
    return-void
.end method

.method private stopListening()V
    .locals 3

    .line 292
    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 304
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 305
    return-void
.end method

.method private stopUpdateLocationChange()V
    .locals 2

    .line 246
    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopUpdateLocationChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 248
    return-void
.end method

.method private updateTwilightState()V
    .locals 13

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    :goto_0
    nop

    .line 312
    .local v2, "location":Landroid/location/Location;
    invoke-static {v2, v0, v1}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v3

    .line 318
    .local v3, "state":Lcom/android/server/twilight/TwilightState;
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 323
    :try_start_0
    iput-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 325
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 326
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/twilight/TwilightListener;

    .line 327
    .local v6, "listener":Lcom/android/server/twilight/TwilightListener;
    iget-object v7, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    .line 328
    .local v7, "handler":Landroid/os/Handler;
    new-instance v8, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v8, p0, v6, v3}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    nop

    .end local v6    # "listener":Lcom/android/server/twilight/TwilightListener;
    .end local v7    # "handler":Landroid/os/Handler;
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 339
    .end local v5    # "i":I
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    if-eqz v3, :cond_3

    .line 343
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v4

    :goto_2
    move-wide v8, v4

    .line 345
    .local v8, "triggerAtMillis":J
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x1

    iget-object v12, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const-string v10, "TwilightService"

    move-object v11, p0

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 347
    .end local v8    # "triggerAtMillis":J
    :cond_3
    return-void

    .line 339
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 240
    return v3

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v0, :cond_1

    .line 233
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startUpdateLocationChange()V

    .line 237
    :cond_1
    return v1

    .line 225
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v0, :cond_3

    .line 226
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopUpdateLocationChange()V

    .line 230
    :cond_3
    return v1

    .line 215
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v0, :cond_5

    .line 216
    iput-boolean v3, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 217
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_5

    .line 218
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    .line 221
    :cond_5
    return v1

    .line 207
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez v0, :cond_7

    .line 208
    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 209
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_7

    .line 210
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 213
    :cond_7
    return v1
.end method

.method public onAlarm()V
    .locals 2

    .line 351
    const-string v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 353
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 163
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, "c":Landroid/content/Context;
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 166
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 169
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 173
    .end local v0    # "c":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 360
    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v1, "TwilightService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 367
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 369
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 381
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 377
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 103
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 179
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 181
    sget v0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 182
    sput p1, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    .line 184
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 373
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 195
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 197
    sget v0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 198
    const/16 v0, -0x2710

    sput v0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    .line 200
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .line 188
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 190
    sput p1, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    .line 191
    return-void
.end method
