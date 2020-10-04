.class Lcom/android/server/trust/TrustAgentWrapper$2;
.super Landroid/os/Handler;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .line 121
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 124
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-string v3, "escrow_token"

    const/4 v4, 0x2

    const-string v5, "handle"

    const/4 v6, 0x1

    const-string/jumbo v7, "user_id"

    const/4 v8, 0x0

    const-string v9, "TrustAgentWrapper"

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 262
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/trust/TrustManagerService;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V

    .line 264
    goto/16 :goto_5

    .line 255
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 256
    .local v4, "handle":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 258
    .local v3, "eToken":[B
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v3, v0}, Lcom/android/server/trust/TrustManagerService;->unlockUserWithToken(J[BI)V

    .line 259
    goto/16 :goto_5

    .line 227
    .end local v0    # "userId":I
    .end local v3    # "eToken":[B
    .end local v4    # "handle":J
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 228
    .local v3, "handle":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 229
    .local v5, "userId":I
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/trust/TrustManagerService;->isEscrowTokenActive(JI)Z

    move-result v7

    .line 231
    .local v7, "active":Z
    :try_start_0
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    .line 233
    if-eqz v7, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    move v6, v10

    .line 232
    :goto_0
    invoke-interface {v0, v3, v4, v6}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_1
    goto/16 :goto_5

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6, v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    .line 242
    .end local v3    # "handle":J
    .end local v5    # "userId":I
    .end local v7    # "active":Z
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 243
    .restart local v3    # "handle":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 244
    .restart local v5    # "userId":I
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    move-result v6

    .line 246
    .local v6, "success":Z
    :try_start_1
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    invoke-interface {v0, v3, v4, v6}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenRemoved(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :cond_2
    goto/16 :goto_5

    .line 249
    :catch_1
    move-exception v0

    .line 250
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v7, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v7, v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    .line 207
    .end local v3    # "handle":J
    .end local v5    # "userId":I
    .end local v6    # "success":Z
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 208
    .local v3, "eToken":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 209
    .local v4, "userId":I
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->addEscrowToken([BI)J

    move-result-wide v5

    .line 210
    .local v5, "handle":J
    const/4 v7, 0x0

    .line 212
    .local v7, "resultDeliverred":Z
    :try_start_2
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    .line 214
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 213
    invoke-interface {v0, v3, v5, v6, v8}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 215
    const/4 v0, 0x1

    move v7, v0

    .line 219
    :cond_3
    goto :goto_1

    .line 217
    :catch_2
    move-exception v0

    .line 218
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v8, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v8, v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    if-nez v7, :cond_10

    .line 222
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    goto/16 :goto_5

    .line 198
    .end local v3    # "eToken":[B
    .end local v4    # "userId":I
    .end local v5    # "handle":J
    .end local v7    # "resultDeliverred":Z
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v6, v10

    :goto_2
    invoke-static {v0, v6}, Lcom/android/server/trust/TrustAgentWrapper;->access$1502(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 199
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1500(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 200
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 201
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v8}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 203
    :cond_5
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$1500(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/trust/TrustArchive;->logManagingTrust(ILandroid/content/ComponentName;Z)V

    .line 204
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 205
    goto/16 :goto_5

    .line 182
    :pswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 183
    .local v0, "token":Landroid/os/IBinder;
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move v6, v10

    :goto_3
    move v3, v6

    .line 184
    .local v3, "result":Z
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1300(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_8

    .line 185
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4, v8}, Lcom/android/server/trust/TrustAgentWrapper;->access$1302(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 186
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1400(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v3, :cond_10

    .line 187
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-enabling agent because it acknowledged enabled features: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 188
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_7
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4, v10}, Lcom/android/server/trust/TrustAgentWrapper;->access$1402(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 190
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v5

    invoke-virtual {v4, v5, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto/16 :goto_5

    .line 193
    :cond_8
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring MSG_SET_TRUST_AGENT_FEATURES_COMPLETED with obsolete token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 194
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 176
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v3    # "result":Z
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection attempt to agent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timed out, rebinding"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 179
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->resetAgent(Landroid/content/ComponentName;I)V

    .line 180
    goto/16 :goto_5

    .line 162
    :pswitch_8
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trust timed out : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_9
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/trust/TrustArchive;->logTrustTimeout(ILandroid/content/ComponentName;)V

    .line 164
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1200(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 167
    :pswitch_9
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 168
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v8}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 169
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget v0, v2, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_a

    .line 171
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/trust/TrustArchive;->logRevokeTrust(ILandroid/content/ComponentName;)V

    .line 173
    :cond_a
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 174
    goto/16 :goto_5

    .line 126
    :pswitch_a
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agent is not connected, cannot grant trust: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 128
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_b
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v6}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 132
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 133
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 134
    .local v0, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "duration"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 135
    .local v5, "durationMs":J
    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-lez v3, :cond_e

    .line 137
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$400(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v13

    cmp-long v3, v13, v11

    if-eqz v3, :cond_c

    .line 142
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$400(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v11

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 143
    .local v11, "duration":J
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DPM lock timeout in effect. Timeout adjusted from "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 148
    .end local v11    # "duration":J
    :cond_c
    move-wide v11, v5

    .line 150
    .restart local v11    # "duration":J
    :cond_d
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 151
    .local v13, "expiration":J
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v7

    iget-object v9, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v9}, Lcom/android/server/trust/TrustAgentWrapper;->access$800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v15, 0x10000000

    invoke-static {v7, v10, v9, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/trust/TrustAgentWrapper;->access$602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 153
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v7, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 154
    invoke-static {v7}, Lcom/android/server/trust/TrustAgentWrapper;->access$600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 153
    invoke-virtual {v3, v4, v13, v14, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 156
    .end local v11    # "duration":J
    .end local v13    # "expiration":J
    :cond_e
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v3

    iget-object v11, v3, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v12

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v13

    .line 157
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_f
    move-object v14, v8

    .line 156
    move-wide v15, v5

    move/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/trust/TrustArchive;->logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 159
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 160
    nop

    .line 267
    .end local v0    # "flags":I
    .end local v5    # "durationMs":J
    :cond_10
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
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
