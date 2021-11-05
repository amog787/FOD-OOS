.class Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;
.super Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;
.source "ContentSuggestionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentSuggestionsManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-direct {p0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p2, "x1"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$1;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V

    return-void
.end method


# virtual methods
.method public classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "classificationsRequest"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p3, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;

    .line 213
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "classifyContentSelections"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$900(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1000(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 217
    .local v1, "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1, p2, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->classifyContentSelectionsLocked(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 224
    .end local v1    # "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    :cond_0
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabled(ILcom/android/internal/os/IResultReceiver;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "isEnabled"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1300(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1400(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Z

    move-result v1

    .line 252
    .local v1, "isDisabled":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 254
    return-void

    .line 252
    .end local v1    # "isDisabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 230
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "notifyInteraction"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1200(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 234
    .local v1, "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1, p2, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->notifyInteractionLocked(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    .end local v1    # "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    :cond_0
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 262
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected shell caller"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 267
    :cond_0
    new-instance v3, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-direct {v3, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V

    .line 268
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 269
    return-void
.end method

.method public provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageContextRequestExtras"    # Landroid/os/Bundle;

    .line 127
    if-eqz p2, :cond_2

    .line 130
    if-eqz p3, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "provideContextBitmap"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$200(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$300(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 137
    .local v1, "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    if-eqz v1, :cond_0

    .line 139
    const-string v2, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    invoke-virtual {v1, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->provideContextImageFromBitmapLocked(Landroid/os/Bundle;)V

    .line 146
    .end local v1    # "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    :cond_0
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null imageContextRequestExtras"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provideContextImage(IILandroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "taskId"    # I
    .param p3, "imageContextRequestExtras"    # Landroid/os/Bundle;

    .line 154
    if-eqz p3, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "provideContextImage"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "snapshotBuffer":Landroid/graphics/GraphicBuffer;
    const/4 v1, 0x0

    .line 163
    .local v1, "colorSpaceId":I
    const-string v2, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 166
    invoke-static {v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$400(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTaskSnapshotBlocking(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    .line 167
    .local v2, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 169
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    .line 170
    .local v3, "colorSpace":Landroid/graphics/ColorSpace;
    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    .line 176
    .end local v2    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v3    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_0
    iget-object v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$500(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v3, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$600(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 178
    .local v3, "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {v3, p2, v0, v1, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->provideContextImageLocked(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V

    .line 186
    .end local v3    # "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    :cond_1
    monitor-exit v2

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 155
    .end local v0    # "snapshotBuffer":Landroid/graphics/GraphicBuffer;
    .end local v1    # "colorSpaceId":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null imageContextRequestExtras"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "selectionsRequest"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p3, "selectionsCallback"    # Landroid/app/contentsuggestions/ISelectionsCallback;

    .line 194
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "suggestContentSelections"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$700(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$800(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 198
    .local v1, "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1, p2, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->suggestContentSelectionsLocked(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 205
    .end local v1    # "service":Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    :cond_0
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
