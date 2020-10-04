.class Lcom/android/server/wm/TaskRecord$TaskRecordFactory;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskRecordFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;
    .locals 33
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "affinityIntent"    # Landroid/content/Intent;
    .param p5, "affinity"    # Ljava/lang/String;
    .param p6, "rootAffinity"    # Ljava/lang/String;
    .param p7, "realActivity"    # Landroid/content/ComponentName;
    .param p8, "origActivity"    # Landroid/content/ComponentName;
    .param p9, "rootWasReset"    # Z
    .param p10, "autoRemoveRecents"    # Z
    .param p11, "askedCompatMode"    # Z
    .param p12, "userId"    # I
    .param p13, "effectiveUid"    # I
    .param p14, "lastDescription"    # Ljava/lang/String;
    .param p16, "lastTimeMoved"    # J
    .param p18, "neverRelinquishIdentity"    # Z
    .param p19, "lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "taskAffiliationColor"    # I
    .param p24, "callingUid"    # I
    .param p25, "callingPackage"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityTaskManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)",
            "Lcom/android/server/wm/TaskRecord;"
        }
    .end annotation

    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    .line 2816
    new-instance v32, Lcom/android/server/wm/TaskRecord;

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v31}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V

    return-object v32
.end method

.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;
    .locals 7
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2800
    new-instance v6, Lcom/android/server/wm/TaskRecord;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V

    return-object v6
.end method

.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;
    .locals 8
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2794
    new-instance v7, Lcom/android/server/wm/TaskRecord;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-object v7
.end method

.method handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreTask: Unexpected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3053
    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;
    .locals 70
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2827
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 2828
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 2829
    .local v2, "affinityIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2830
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 2831
    .local v4, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 2832
    .local v5, "realActivitySuspended":Z
    const/4 v6, 0x0

    .line 2833
    .local v6, "origActivity":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 2834
    .local v7, "affinity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2835
    .local v8, "rootAffinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2836
    .local v9, "hasRootAffinity":Z
    const/4 v10, 0x0

    .line 2837
    .local v10, "rootHasReset":Z
    const/4 v11, 0x0

    .line 2838
    .local v11, "autoRemoveRecents":Z
    const/4 v12, 0x0

    .line 2839
    .local v12, "askedCompatMode":Z
    const/4 v13, 0x0

    .line 2840
    .local v13, "taskType":I
    const/4 v14, 0x0

    .line 2841
    .local v14, "userId":I
    const/4 v15, 0x1

    .line 2842
    .local v15, "userSetupComplete":Z
    const/16 v16, -0x1

    .line 2843
    .local v16, "effectiveUid":I
    const/16 v17, 0x0

    .line 2844
    .local v17, "lastDescription":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 2845
    .local v18, "lastTimeOnTop":J
    const/16 v20, 0x1

    .line 2846
    .local v20, "neverRelinquishIdentity":Z
    const/16 v21, -0x1

    .line 2847
    .local v21, "taskId":I
    move-object/from16 v22, v2

    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .local v22, "affinityIntent":Landroid/content/Intent;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2848
    .local v2, "outerDepth":I
    new-instance v23, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v23 .. v23}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v36, v23

    .line 2849
    .local v36, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v23, -0x1

    .line 2850
    .local v23, "taskAffiliation":I
    const/16 v24, 0x0

    .line 2851
    .local v24, "taskAffiliationColor":I
    const/16 v25, -0x1

    .line 2852
    .local v25, "prevTaskId":I
    const/16 v26, -0x1

    .line 2853
    .local v26, "nextTaskId":I
    const/16 v27, -0x1

    .line 2854
    .local v27, "callingUid":I
    const-string v28, ""

    .line 2855
    .local v28, "callingPackage":Ljava/lang/String;
    const/16 v29, 0x4

    .line 2856
    .local v29, "resizeMode":I
    const/16 v30, 0x0

    .line 2857
    .local v30, "supportsPictureInPicture":Z
    const/16 v31, 0x0

    .line 2858
    .local v31, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v32, -0x1

    .line 2859
    .local v32, "minWidth":I
    const/16 v33, -0x1

    .line 2860
    .local v33, "minHeight":I
    const/16 v34, 0x0

    .line 2862
    .local v34, "persistTaskVersion":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v35

    move/from16 v37, v15

    .end local v15    # "userSetupComplete":Z
    .local v37, "userSetupComplete":Z
    const/4 v15, 0x1

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v39, v4

    move/from16 v52, v5

    move-object/from16 v42, v6

    move-object/from16 v44, v7

    move/from16 v53, v9

    move/from16 v54, v10

    move/from16 v55, v11

    move/from16 v56, v12

    move v11, v13

    move v10, v14

    move-object/from16 v48, v17

    move-wide/from16 v50, v18

    move/from16 v14, v21

    move/from16 v38, v23

    move/from16 v40, v24

    move/from16 v41, v25

    move/from16 v43, v26

    move/from16 v45, v27

    move-object/from16 v49, v28

    move/from16 v5, v29

    move-object/from16 v12, v31

    move/from16 v46, v32

    move/from16 v47, v33

    move/from16 v13, v34

    move/from16 v4, v35

    move/from16 v57, v37

    move/from16 v37, v20

    .end local v6    # "origActivity":Landroid/content/ComponentName;
    .end local v7    # "affinity":Ljava/lang/String;
    .end local v9    # "hasRootAffinity":Z
    .end local v17    # "lastDescription":Ljava/lang/String;
    .end local v18    # "lastTimeOnTop":J
    .end local v20    # "neverRelinquishIdentity":Z
    .end local v21    # "taskId":I
    .end local v23    # "taskAffiliation":I
    .end local v24    # "taskAffiliationColor":I
    .end local v25    # "prevTaskId":I
    .end local v26    # "nextTaskId":I
    .end local v27    # "callingUid":I
    .end local v28    # "callingPackage":Ljava/lang/String;
    .end local v29    # "resizeMode":I
    .end local v31    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v32    # "minWidth":I
    .end local v33    # "minHeight":I
    .end local v34    # "persistTaskVersion":I
    .local v4, "attrNdx":I
    .local v5, "resizeMode":I
    .local v10, "userId":I
    .local v11, "taskType":I
    .local v12, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v13, "persistTaskVersion":I
    .local v14, "taskId":I
    .local v37, "neverRelinquishIdentity":Z
    .local v38, "taskAffiliation":I
    .local v39, "realActivity":Landroid/content/ComponentName;
    .local v40, "taskAffiliationColor":I
    .local v41, "prevTaskId":I
    .local v42, "origActivity":Landroid/content/ComponentName;
    .local v43, "nextTaskId":I
    .local v44, "affinity":Ljava/lang/String;
    .local v45, "callingUid":I
    .local v46, "minWidth":I
    .local v47, "minHeight":I
    .local v48, "lastDescription":Ljava/lang/String;
    .local v49, "callingPackage":Ljava/lang/String;
    .local v50, "lastTimeOnTop":J
    .local v52, "realActivitySuspended":Z
    .local v53, "hasRootAffinity":Z
    .local v54, "rootHasReset":Z
    .local v55, "autoRemoveRecents":Z
    .local v56, "askedCompatMode":Z
    .local v57, "userSetupComplete":Z
    :goto_0
    const-string v9, "ActivityTaskManager"

    if-ltz v4, :cond_3

    .line 2863
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 2864
    .local v6, "attrName":Ljava/lang/String;
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 2867
    .local v7, "attrValue":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v15, "root_has_reset"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string v15, "real_activity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v15, "never_relinquish_identity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v15, "calling_package"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x15

    goto/16 :goto_2

    :sswitch_4
    const-string v15, "persist_task_version"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1b

    goto/16 :goto_2

    :sswitch_5
    const-string v15, "last_description"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xd

    goto/16 :goto_2

    :sswitch_6
    const-string v15, "affinity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x4

    goto/16 :goto_2

    :sswitch_7
    const-string v15, "min_width"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x19

    goto/16 :goto_2

    :sswitch_8
    const-string v15, "prev_affiliation"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x11

    goto/16 :goto_2

    :sswitch_9
    const-string v15, "task_type"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xc

    goto/16 :goto_2

    :sswitch_a
    const-string v15, "calling_uid"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x14

    goto/16 :goto_2

    :sswitch_b
    const-string v15, "user_id"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x9

    goto/16 :goto_2

    :sswitch_c
    const-string v15, "root_affinity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x5

    goto/16 :goto_2

    :sswitch_d
    const-string v15, "supports_picture_in_picture"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x17

    goto/16 :goto_2

    :sswitch_e
    const-string v15, "auto_remove_recents"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x7

    goto/16 :goto_2

    :sswitch_f
    const-string v15, "orig_activity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x3

    goto/16 :goto_2

    :sswitch_10
    const-string v15, "non_fullscreen_bounds"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x18

    goto/16 :goto_2

    :sswitch_11
    const-string v15, "min_height"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1a

    goto/16 :goto_2

    :sswitch_12
    const-string v15, "resize_mode"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x16

    goto/16 :goto_2

    :sswitch_13
    const-string v15, "effective_uid"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xb

    goto :goto_2

    :sswitch_14
    const-string v15, "user_setup_complete"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xa

    goto :goto_2

    :sswitch_15
    const-string v15, "task_affiliation"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x10

    goto :goto_2

    :sswitch_16
    const-string v15, "real_activity_suspended"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x2

    goto :goto_2

    :sswitch_17
    const-string v15, "task_affiliation_color"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x13

    goto :goto_2

    :sswitch_18
    const-string v15, "next_affiliation"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x12

    goto :goto_2

    :sswitch_19
    const-string v15, "task_id"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    goto :goto_2

    :sswitch_1a
    const-string v15, "last_time_moved"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xe

    goto :goto_2

    :sswitch_1b
    const-string v15, "asked_compat_mode"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x8

    goto :goto_2

    :goto_1
    const/4 v15, -0x1

    :goto_2
    packed-switch v15, :pswitch_data_0

    .line 2954
    const-string v15, "task_description_"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2955
    move-object/from16 v15, v36

    .end local v36    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v15, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v15, v6, v7}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 2951
    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v36    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2952
    .end local v13    # "persistTaskVersion":I
    .local v9, "persistTaskVersion":I
    move-object/from16 v19, v0

    move v13, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2948
    .end local v9    # "persistTaskVersion":I
    .restart local v13    # "persistTaskVersion":I
    :pswitch_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 2949
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2945
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 2946
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2942
    :pswitch_3
    invoke-static {v7}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v9

    .line 2943
    .end local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v9, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v19, v0

    move-object v12, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2939
    .end local v9    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_4
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 2940
    .end local v30    # "supportsPictureInPicture":Z
    .local v9, "supportsPictureInPicture":Z
    move-object/from16 v19, v0

    move/from16 v30, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2936
    .end local v9    # "supportsPictureInPicture":Z
    .restart local v30    # "supportsPictureInPicture":Z
    :pswitch_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2937
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2933
    :pswitch_6
    move-object/from16 v49, v7

    .line 2934
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2930
    :pswitch_7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 2931
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2927
    :pswitch_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 2928
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2924
    :pswitch_9
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 2925
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2921
    :pswitch_a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2922
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2918
    :pswitch_b
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 2919
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2915
    :pswitch_c
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v37

    .line 2916
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2912
    :pswitch_d
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v50

    .line 2913
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2909
    :pswitch_e
    move-object/from16 v48, v7

    .line 2910
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2906
    :pswitch_f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2907
    .end local v11    # "taskType":I
    .local v9, "taskType":I
    move-object/from16 v19, v0

    move v11, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2903
    .end local v9    # "taskType":I
    .restart local v11    # "taskType":I
    :pswitch_10
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2904
    .end local v16    # "effectiveUid":I
    .local v9, "effectiveUid":I
    move-object/from16 v19, v0

    move/from16 v16, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2900
    .end local v9    # "effectiveUid":I
    .restart local v16    # "effectiveUid":I
    :pswitch_11
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    .line 2901
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2897
    :pswitch_12
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2898
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2894
    :pswitch_13
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v56

    .line 2895
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2891
    :pswitch_14
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v55

    .line 2892
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    .line 2888
    :pswitch_15
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v54

    .line 2889
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    .line 2884
    :pswitch_16
    move-object v8, v7

    .line 2885
    const/4 v9, 0x1

    .line 2886
    .end local v53    # "hasRootAffinity":Z
    .local v9, "hasRootAffinity":Z
    move-object/from16 v19, v0

    move/from16 v53, v9

    move-object/from16 v15, v36

    goto :goto_3

    .line 2881
    .end local v9    # "hasRootAffinity":Z
    .restart local v53    # "hasRootAffinity":Z
    :pswitch_17
    move-object/from16 v44, v7

    .line 2882
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    .line 2878
    :pswitch_18
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v42

    .line 2879
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    .line 2875
    :pswitch_19
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    .line 2876
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    .line 2872
    :pswitch_1a
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v39

    .line 2873
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    .line 2869
    :pswitch_1b
    const/4 v9, -0x1

    if-ne v14, v9, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_1
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    .line 2957
    :cond_2
    move-object/from16 v15, v36

    .end local v36    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v19, v0

    .end local v0    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    .end local v7    # "attrValue":Ljava/lang/String;
    .local v21, "attrValue":Ljava/lang/String;
    const-string v7, "TaskRecord: Unknown attribute="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v21    # "attrValue":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v36, v15

    move-object/from16 v0, v19

    const/4 v15, 0x1

    goto/16 :goto_0

    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v36    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :cond_3
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v36    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v19    # "intent":Landroid/content/Intent;
    move-object/from16 v36, v19

    move-object/from16 v58, v22

    .line 2963
    .end local v4    # "attrNdx":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "affinityIntent":Landroid/content/Intent;
    .local v36, "intent":Landroid/content/Intent;
    .local v58, "affinityIntent":Landroid/content/Intent;
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    const/4 v4, 0x1

    .local v7, "event":I
    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-ne v7, v4, :cond_5

    .line 2964
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_4

    goto :goto_5

    :cond_4
    move-object/from16 v6, p0

    goto :goto_7

    .line 2965
    :cond_5
    :goto_5
    const/4 v4, 0x2

    if-ne v7, v4, :cond_a

    .line 2966
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2969
    .local v0, "name":Ljava/lang/String;
    const-string v4, "affinity_intent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2970
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v6, p0

    move-object/from16 v58, v4

    .end local v58    # "affinityIntent":Landroid/content/Intent;
    .local v4, "affinityIntent":Landroid/content/Intent;
    goto :goto_6

    .line 2971
    .end local v4    # "affinityIntent":Landroid/content/Intent;
    .restart local v58    # "affinityIntent":Landroid/content/Intent;
    :cond_6
    const-string v4, "intent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2972
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v6, p0

    move-object/from16 v36, v4

    .end local v36    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    goto :goto_6

    .line 2973
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v36    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v4, "activity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2974
    nop

    .line 2975
    invoke-static/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2978
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_8

    .line 2979
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2981
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    move-object/from16 v6, p0

    goto :goto_6

    .line 2982
    :cond_9
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2984
    .end local v0    # "name":Ljava/lang/String;
    :goto_6
    goto :goto_4

    .line 2965
    :cond_a
    move-object/from16 v6, p0

    goto :goto_4

    .line 2963
    :cond_b
    move-object/from16 v6, p0

    .line 2986
    :goto_7
    if-nez v53, :cond_c

    .line 2987
    move-object/from16 v0, v44

    move-object/from16 v59, v0

    .end local v8    # "rootAffinity":Ljava/lang/String;
    .local v0, "rootAffinity":Ljava/lang/String;
    goto :goto_8

    .line 2988
    .end local v0    # "rootAffinity":Ljava/lang/String;
    .restart local v8    # "rootAffinity":Ljava/lang/String;
    :cond_c
    const-string v0, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2989
    const/4 v0, 0x0

    move-object/from16 v59, v0

    .end local v8    # "rootAffinity":Ljava/lang/String;
    .restart local v0    # "rootAffinity":Ljava/lang/String;
    goto :goto_8

    .line 2988
    .end local v0    # "rootAffinity":Ljava/lang/String;
    .restart local v8    # "rootAffinity":Ljava/lang/String;
    :cond_d
    move-object/from16 v59, v8

    .line 2991
    .end local v8    # "rootAffinity":Ljava/lang/String;
    .local v59, "rootAffinity":Ljava/lang/String;
    :goto_8
    if-gtz v16, :cond_11

    .line 2992
    if-eqz v36, :cond_e

    move-object/from16 v0, v36

    goto :goto_9

    :cond_e
    move-object/from16 v0, v58

    :goto_9
    move-object v4, v0

    .line 2993
    .local v4, "checkIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 2994
    .end local v16    # "effectiveUid":I
    .local v8, "effectiveUid":I
    if-eqz v4, :cond_10

    .line 2995
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 2997
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 2998
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v60, v2

    .end local v2    # "outerDepth":I
    .local v60, "outerDepth":I
    const/16 v2, 0x2200

    .line 2997
    :try_start_1
    invoke-interface {v1, v0, v2, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3001
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f

    .line 3002
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v2

    .line 3005
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_f
    goto :goto_a

    .line 3004
    :catch_0
    move-exception v0

    goto :goto_a

    .end local v60    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :catch_1
    move-exception v0

    move/from16 v60, v2

    .end local v2    # "outerDepth":I
    .restart local v60    # "outerDepth":I
    goto :goto_a

    .line 2994
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v60    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_10
    move/from16 v60, v2

    .line 3007
    .end local v2    # "outerDepth":I
    .restart local v60    # "outerDepth":I
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating task #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": effectiveUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_b

    .line 2991
    .end local v4    # "checkIntent":Landroid/content/Intent;
    .end local v8    # "effectiveUid":I
    .end local v60    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    .restart local v16    # "effectiveUid":I
    :cond_11
    move/from16 v60, v2

    .end local v2    # "outerDepth":I
    .restart local v60    # "outerDepth":I
    move/from16 v0, v16

    .line 3011
    .end local v16    # "effectiveUid":I
    .local v0, "effectiveUid":I
    :goto_b
    const/4 v1, 0x1

    if-ge v13, v1, :cond_12

    .line 3016
    if-ne v11, v1, :cond_13

    const/4 v2, 0x2

    if-ne v5, v2, :cond_13

    .line 3017
    const/4 v2, 0x1

    move/from16 v61, v30

    .end local v5    # "resizeMode":I
    .local v2, "resizeMode":I
    goto :goto_c

    .line 3024
    .end local v2    # "resizeMode":I
    .restart local v5    # "resizeMode":I
    :cond_12
    const/4 v2, 0x3

    if-ne v5, v2, :cond_13

    .line 3025
    const/4 v2, 0x2

    .line 3026
    .end local v5    # "resizeMode":I
    .restart local v2    # "resizeMode":I
    const/4 v4, 0x1

    move/from16 v61, v4

    .end local v30    # "supportsPictureInPicture":Z
    .local v4, "supportsPictureInPicture":Z
    goto :goto_c

    .line 3030
    .end local v2    # "resizeMode":I
    .end local v4    # "supportsPictureInPicture":Z
    .restart local v5    # "resizeMode":I
    .restart local v30    # "supportsPictureInPicture":Z
    :cond_13
    move v2, v5

    move/from16 v61, v30

    .end local v5    # "resizeMode":I
    .end local v30    # "supportsPictureInPicture":Z
    .restart local v2    # "resizeMode":I
    .local v61, "supportsPictureInPicture":Z
    :goto_c
    move-object/from16 v8, p2

    iget-object v5, v8, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v4, p0

    move v6, v14

    move/from16 v62, v7

    .end local v7    # "event":I
    .local v62, "event":I
    move-object/from16 v7, v36

    move-object/from16 v8, v58

    move-object v1, v9

    move-object/from16 v9, v44

    move/from16 v63, v10

    .end local v10    # "userId":I
    .local v63, "userId":I
    move-object/from16 v10, v59

    move/from16 v64, v11

    .end local v11    # "taskType":I
    .local v64, "taskType":I
    move-object/from16 v11, v39

    move-object/from16 v65, v1

    move-object v1, v12

    .end local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v1, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v12, v42

    move/from16 v66, v13

    .end local v13    # "persistTaskVersion":I
    .local v66, "persistTaskVersion":I
    move/from16 v13, v54

    move/from16 v67, v14

    .end local v14    # "taskId":I
    .local v67, "taskId":I
    move/from16 v14, v55

    move-object/from16 v68, v15

    const/16 v69, 0x1

    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v68, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move/from16 v15, v56

    move/from16 v16, v63

    move/from16 v17, v0

    move-object/from16 v18, v48

    move-object/from16 v19, v3

    move-wide/from16 v20, v50

    move/from16 v22, v37

    move-object/from16 v23, v68

    move/from16 v24, v38

    move/from16 v25, v41

    move/from16 v26, v43

    move/from16 v27, v40

    move/from16 v28, v45

    move-object/from16 v29, v49

    move/from16 v30, v2

    move/from16 v31, v61

    move/from16 v32, v52

    move/from16 v33, v57

    move/from16 v34, v46

    move/from16 v35, v47

    invoke-virtual/range {v4 .. v35}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 3038
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    iput-object v1, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 3039
    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 3041
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_d
    if-ltz v5, :cond_14

    .line 3042
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 3041
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    .line 3045
    .end local v5    # "activityNdx":I
    :cond_14
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v65

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_15
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1b
        -0x5ccdaff6 -> :sswitch_1a
        -0x5ba06deb -> :sswitch_19
        -0x591a685c -> :sswitch_18
        -0x4d0e36e6 -> :sswitch_17
        -0x43dc2f14 -> :sswitch_16
        -0x430d08ca -> :sswitch_15
        -0x3a0f4851 -> :sswitch_14
        -0x37680e48 -> :sswitch_13
        -0x3395d9b2 -> :sswitch_12
        -0x313f784c -> :sswitch_11
        -0x2a27c539 -> :sswitch_10
        -0x2a0990b3 -> :sswitch_f
        -0x1df202b3 -> :sswitch_e
        -0x158140a0 -> :sswitch_d
        -0x9b3481b -> :sswitch_c
        -0x8c511f1 -> :sswitch_b
        -0x7e175ab -> :sswitch_a
        0xac8bdb4 -> :sswitch_9
        0x13bdcee4 -> :sswitch_8
        0x2046b199 -> :sswitch_7
        0x24172928 -> :sswitch_6
        0x33cf43d3 -> :sswitch_5
        0x3c12eca9 -> :sswitch_4
        0x40756fcb -> :sswitch_3
        0x56e1584e -> :sswitch_2
        0x5bc3bc90 -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
