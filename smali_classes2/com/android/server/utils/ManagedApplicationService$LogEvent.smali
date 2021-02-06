.class public Lcom/android/server/utils/ManagedApplicationService$LogEvent;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/ManagedApplicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEvent"
.end annotation


# static fields
.field public static final EVENT_BINDING_DIED:I = 0x3

.field public static final EVENT_CONNECTED:I = 0x1

.field public static final EVENT_DISCONNECTED:I = 0x2

.field public static final EVENT_STOPPED_PERMANENTLY:I = 0x4


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final event:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(JLandroid/content/ComponentName;I)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "event"    # I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-wide p1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    .line 125
    iput-object p3, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 126
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    .line 127
    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 137
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 147
    const-string v0, "Unknown Event Occurred"

    return-object v0

    .line 145
    :cond_0
    const-string v0, "Permanently Stopped"

    return-object v0

    .line 143
    :cond_1
    const-string v0, "Binding Died For"

    return-object v0

    .line 141
    :cond_2
    const-string v0, "Disconnected"

    return-object v0

    .line 139
    :cond_3
    const-string v0, "Connected"

    return-object v0
.end method


# virtual methods
.method public toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 4
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    invoke-static {v1}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Managed Service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const-string v1, "None"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method
