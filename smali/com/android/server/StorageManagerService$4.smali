.class Lcom/android/server/StorageManagerService$4;
.super Landroid/os/IVoldListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 1125
    iput-object p1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskCreated(Ljava/lang/String;I)V
    .locals 6
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1128
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1129
    :try_start_0
    const-string/jumbo v1, "persist.sys.adoptable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, "value":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1bb67bb3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x5b18fa1b

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "force_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_2
    const-string v3, "force_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_1

    .line 1135
    :cond_3
    and-int/lit8 p2, p2, -0x2

    goto :goto_1

    .line 1132
    :cond_4
    or-int/lit8 p2, p2, 0x1

    .line 1133
    nop

    .line 1138
    :goto_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    new-instance v3, Landroid/os/storage/DiskInfo;

    invoke-direct {v3, p1, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    nop

    .end local v1    # "value":Ljava/lang/String;
    monitor-exit v0

    .line 1140
    return-void

    .line 1139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1167
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1169
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_0

    .line 1170
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3100(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    .line 1172
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "sizeBytes"    # J
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "sysPath"    # Ljava/lang/String;

    .line 1155
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1157
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_0

    .line 1158
    iput-wide p2, v1, Landroid/os/storage/DiskInfo;->size:J

    .line 1159
    iput-object p4, v1, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 1160
    iput-object p5, v1, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 1162
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    monitor-exit v0

    .line 1163
    return-void

    .line 1162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1146
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_0

    .line 1147
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService;->access$2900(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    .line 1149
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    monitor-exit v0

    .line 1150
    return-void

    .line 1149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "diskId"    # Ljava/lang/String;
    .param p4, "partGuid"    # Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1179
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    new-instance v2, Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, p1, p2, v1, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1180
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object v3, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->access$3200(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 1182
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    monitor-exit v0

    .line 1183
    return-void

    .line 1182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    .line 1233
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    monitor-exit v0

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "internalPath"    # Ljava/lang/String;

    .line 1223
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1225
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1226
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 1228
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0

    .line 1229
    return-void

    .line 1228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "fsType"    # Ljava/lang/String;
    .param p3, "fsUuid"    # Ljava/lang/String;
    .param p4, "fsLabel"    # Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1203
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1204
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 1205
    iput-object p3, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 1206
    iput-object p4, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 1208
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0

    .line 1209
    return-void

    .line 1208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1215
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1216
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1218
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0

    .line 1219
    return-void

    .line 1218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 1187
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1189
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1190
    iget v2, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1191
    .local v2, "oldState":I
    move v3, p2

    .line 1192
    .local v3, "newState":I
    iput v3, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1193
    iget-object v4, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$3300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1195
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v2    # "oldState":I
    .end local v3    # "newState":I
    :cond_0
    monitor-exit v0

    .line 1196
    return-void

    .line 1195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
