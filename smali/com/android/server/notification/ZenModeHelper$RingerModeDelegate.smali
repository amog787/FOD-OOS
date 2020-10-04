.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 1149
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 3
    .param p1, "streams"    # I

    .line 1251
    or-int/lit8 p1, p1, 0x26

    .line 1255
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1257
    or-int/lit8 p1, p1, 0x18

    goto :goto_0

    .line 1260
    :cond_0
    and-int/lit8 p1, p1, -0x19

    .line 1264
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1265
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    and-int/lit8 p1, p1, -0x3

    goto :goto_1

    .line 1270
    :cond_1
    or-int/2addr p1, v1

    .line 1272
    :goto_1
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 16
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 1208
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p2

    .line 1209
    .local v4, "ringerModeInternalOut":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    .line 1210
    .local v7, "isChange":Z
    :goto_0
    if-ne v3, v6, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v5

    .line 1212
    .local v8, "isVibrate":Z
    :goto_1
    const/4 v9, -0x1

    .line 1213
    .local v9, "newZen":I
    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_3

    .line 1227
    :cond_2
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_7

    .line 1228
    const/4 v9, 0x0

    goto :goto_3

    .line 1215
    :cond_3
    if-eqz v7, :cond_6

    .line 1216
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v10, v10, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v10, :cond_4

    .line 1217
    const/4 v9, 0x1

    .line 1219
    :cond_4
    if-eqz v8, :cond_5

    move v5, v6

    goto :goto_2

    .line 1220
    :cond_5
    nop

    :goto_2
    move v4, v5

    goto :goto_3

    .line 1222
    :cond_6
    move/from16 v4, p4

    .line 1224
    nop

    .line 1232
    :cond_7
    :goto_3
    const/4 v5, -0x1

    if-eq v9, v5, :cond_8

    .line 1233
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-string/jumbo v13, "ringerModeExternal"

    move v11, v9

    move-object/from16 v14, p3

    invoke-static/range {v10 .. v15}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1237
    :cond_8
    move-object/from16 v5, p3

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1239
    return v4
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 16
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 1158
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1160
    .local v5, "isChange":Z
    :goto_0
    move/from16 v6, p2

    .line 1162
    .local v6, "ringerModeExternalOut":I
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v7, v4, :cond_2

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v7, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1164
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1167
    :cond_1
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1169
    :cond_2
    const/4 v7, -0x1

    .line 1170
    .local v7, "newZen":I
    if-eqz v2, :cond_7

    const/4 v8, 0x2

    if-eq v2, v4, :cond_3

    if-eq v2, v8, :cond_3

    move-object/from16 v4, p5

    goto :goto_1

    .line 1181
    :cond_3
    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v9, v9, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v9, v8, :cond_4

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v8, v4, :cond_5

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1185
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1187
    :cond_4
    const/4 v7, 0x0

    move-object/from16 v4, p5

    goto :goto_1

    .line 1188
    :cond_5
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_6

    .line 1189
    const/4 v6, 0x0

    move-object/from16 v4, p5

    goto :goto_1

    .line 1188
    :cond_6
    move-object/from16 v4, p5

    goto :goto_1

    .line 1172
    :cond_7
    if-eqz v5, :cond_9

    move-object/from16 v4, p5

    iget-boolean v8, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v8, :cond_a

    .line 1173
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v8, :cond_8

    .line 1174
    const/4 v7, 0x1

    .line 1176
    :cond_8
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1172
    :cond_9
    move-object/from16 v4, p5

    .line 1194
    :cond_a
    :goto_1
    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    .line 1195
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string/jumbo v13, "ringerModeInternal"

    move v11, v7

    invoke-static/range {v10 .. v15}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    :cond_b
    if-nez v5, :cond_d

    if-ne v7, v8, :cond_d

    if-eq v3, v6, :cond_c

    goto :goto_2

    :cond_c
    move-object/from16 v8, p3

    goto :goto_3

    .line 1199
    :cond_d
    :goto_2
    move-object/from16 v8, p3

    invoke-static {v1, v2, v8, v3, v6}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1202
    :goto_3
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1152
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
