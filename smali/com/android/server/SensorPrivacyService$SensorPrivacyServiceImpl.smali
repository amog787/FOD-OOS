.class Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
.super Landroid/hardware/ISensorPrivacyManager$Stub;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorPrivacyServiceImpl"
.end annotation


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/SensorPrivacyService;
    .param p2, "context"    # Landroid/content/Context;

    .line 82
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sensor_privacy.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v0, "sensorPrivacyFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    .line 88
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->readPersistedSensorPrivacyEnabledLocked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 72
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->persistSensorPrivacyState()V

    return-void
.end method

.method private enforceSensorPrivacyPermission()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Changing sensor privacy requires the following permission: android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private persistSensorPrivacyState()V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 180
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 181
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 182
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    const-string/jumbo v3, "sensor-privacy"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string v3, "enabled"

    iget-boolean v5, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string/jumbo v3, "sensor-privacy"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 187
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 192
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 188
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "SensorPrivacyService"

    const-string v4, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 192
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private readPersistedSensorPrivacyEnabledLocked()Z
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 157
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v2, "sensor-privacy"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 159
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 160
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "enabled"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "tagName":Ljava/lang/String;
    .local v3, "enabled":Z
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    :cond_1
    goto :goto_1

    .line 155
    .end local v3    # "enabled":Z
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 162
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SensorPrivacyService"

    const-string v2, "Caught an exception reading the state from storage: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 167
    const/4 v3, 0x0

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "enabled":Z
    :goto_1
    return v3
.end method


# virtual methods
.method public addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 200
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->addListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 204
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSensorPrivacyEnabled()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 211
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 215
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSensorPrivacy(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 99
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceSensorPrivacyPermission()V

    .line 100
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 105
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 106
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 107
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    const-string/jumbo v3, "sensor-privacy"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v3, "enabled"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string/jumbo v3, "sensor-privacy"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 112
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "SensorPrivacyService"

    const-string v4, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 117
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->onSensorPrivacyChanged(Z)V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
