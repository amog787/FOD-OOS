.class Lcom/android/server/am/ServiceRecord$StartItem;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartItem"
.end annotation


# instance fields
.field final callingId:I

.field deliveredTime:J

.field deliveryCount:I

.field doneExecutingCount:I

.field final id:I

.field final intent:Landroid/content/Intent;

.field final neededGrants:Lcom/android/server/uri/NeededUriGrants;

.field final sr:Lcom/android/server/am/ServiceRecord;

.field stringName:Ljava/lang/String;

.field final taskRemoved:Z

.field uriPermissions:Lcom/android/server/uri/UriPermissionOwner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V
    .locals 0
    .param p1, "_sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "_taskRemoved"    # Z
    .param p3, "_id"    # I
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_neededGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "_callingId"    # I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 165
    iput-boolean p2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    .line 166
    iput p3, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 167
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 168
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 169
    iput p6, p0, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 170
    return-void
.end method


# virtual methods
.method getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object v0
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 184
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 212
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, " StartItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "now"    # J

    .line 187
    move-object v0, p0

    move-object v9, p1

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 188
    .local v10, "token":J
    iget v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 189
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    const-wide v2, 0x10b00000002L

    move-object v1, p1

    move-wide/from16 v6, p4

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 191
    iget v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 192
    iget v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 193
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 194
    const-wide v3, 0x10b00000005L

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 197
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v1, :cond_1

    .line 198
    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/uri/NeededUriGrants;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 200
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v1, :cond_2

    .line 201
    const-wide v2, 0x10b00000007L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/uri/UriPermissionOwner;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 203
    :cond_2
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 204
    return-void
.end method
