.class Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ContextHubClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationRecord"
.end annotation


# instance fields
.field private final mAction:I

.field private final mBroker:Ljava/lang/String;

.field private final mTimestamp:J

.field final synthetic this$0:Lcom/android/server/location/ContextHubClientManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubClientManager;Ljava/lang/String;I)V
    .locals 2
    .param p2, "broker"    # Ljava/lang/String;
    .param p3, "action"    # I

    .line 136
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->this$0:Lcom/android/server/location/ContextHubClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    .line 138
    iput p3, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mAction:I

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    .line 140
    return-void
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 143
    iget-wide v0, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 144
    iget v0, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mAction:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 145
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 150
    const-string v0, ""

    .line 151
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/location/ContextHubClientManager;->access$000()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mAction:I

    if-nez v2, :cond_0

    const-string v2, "+ "

    goto :goto_0

    :cond_0
    const-string v2, "- "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget v1, p0, Lcom/android/server/location/ContextHubClientManager$RegistrationRecord;->mAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (cancelled)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    return-object v0
.end method
