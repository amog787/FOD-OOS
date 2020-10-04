.class public final Lcom/android/server/SensorPrivacyService;
.super Lcom/android/server/SystemService;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SensorPrivacyService$DeathRecipient;,
        Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;,
        Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    }
.end annotation


# static fields
.field private static final SENSOR_PRIVACY_XML_FILE:Ljava/lang/String; = "sensor_privacy.xml"

.field private static final TAG:Ljava/lang/String; = "SensorPrivacyService"

.field private static final XML_ATTRIBUTE_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_TAG_SENSOR_PRIVACY:Ljava/lang/String; = "sensor-privacy"


# instance fields
.field private final mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService;

    .line 52
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    const-string/jumbo v1, "sensor_privacy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SensorPrivacyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    return-void
.end method
