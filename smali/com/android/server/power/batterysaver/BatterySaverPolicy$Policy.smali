.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Policy"
.end annotation


# instance fields
.field public final adjustBrightnessFactor:F

.field public final advertiseIsEnabled:Z

.field public final deferFullBackup:Z

.field public final deferKeyValueBackup:Z

.field public final disableAnimation:Z

.field public final disableAod:Z

.field public final disableLaunchBoost:Z

.field public final disableOptionalSensors:Z

.field public final disableSoundTrigger:Z

.field public final disableVibration:Z

.field public final enableAdjustBrightness:Z

.field public final enableDataSaver:Z

.field public final enableFirewall:Z

.field public final enableNightMode:Z

.field public final enableQuickDoze:Z

.field public final filesForInteractive:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final filesForNoninteractive:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final forceAllAppsStandby:Z

.field public final forceBackgroundCheck:Z

.field public final locationMode:I

.field private final mHashCode:I


# direct methods
.method constructor <init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V
    .locals 18
    .param p1, "adjustBrightnessFactor"    # F
    .param p2, "advertiseIsEnabled"    # Z
    .param p3, "deferFullBackup"    # Z
    .param p4, "deferKeyValueBackup"    # Z
    .param p5, "disableAnimation"    # Z
    .param p6, "disableAod"    # Z
    .param p7, "disableLaunchBoost"    # Z
    .param p8, "disableOptionalSensors"    # Z
    .param p9, "disableSoundTrigger"    # Z
    .param p10, "disableVibration"    # Z
    .param p11, "enableAdjustBrightness"    # Z
    .param p12, "enableDataSaver"    # Z
    .param p13, "enableFirewall"    # Z
    .param p14, "enableNightMode"    # Z
    .param p15, "enableQuickDoze"    # Z
    .param p18, "forceAllAppsStandby"    # Z
    .param p19, "forceBackgroundCheck"    # Z
    .param p20, "locationMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZZZZZZZZZZZZZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .line 604
    .local p16, "filesForInteractive":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p17, "filesForNoninteractive":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p16

    move-object/from16 v2, p17

    move/from16 v3, p20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v4, 0x0

    move/from16 v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 607
    move/from16 v4, p2

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 608
    move/from16 v6, p3

    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 609
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 610
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 611
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 612
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 613
    move/from16 v11, p8

    iput-boolean v11, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 614
    move/from16 v12, p9

    iput-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    .line 615
    move/from16 v13, p10

    iput-boolean v13, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 616
    move/from16 v14, p11

    iput-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 617
    move/from16 v15, p12

    iput-boolean v15, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 618
    move/from16 v4, p13

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 619
    move/from16 v4, p14

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 620
    move/from16 v4, p15

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 621
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    .line 622
    iput-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    .line 623
    move/from16 v4, p18

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 624
    move/from16 v4, p19

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 626
    if-ltz v3, :cond_1

    const/4 v4, 0x4

    if-ge v4, v3, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    const/4 v4, 0x0

    goto :goto_1

    .line 628
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid location mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatterySaverPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 634
    :goto_1
    const/16 v5, 0x14

    new-array v5, v5, [Ljava/lang/Object;

    .line 635
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v5, v4

    const/4 v4, 0x1

    .line 636
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v5, v4

    const/4 v4, 0x2

    .line 637
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v5, v4

    const/4 v4, 0x3

    .line 638
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v5, v4

    .line 639
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v16, 0x4

    aput-object v4, v5, v16

    const/4 v4, 0x5

    .line 640
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/4 v4, 0x6

    .line 641
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/4 v4, 0x7

    .line 642
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x8

    .line 643
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x9

    .line 644
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xa

    .line 645
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xb

    .line 646
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xc

    .line 647
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xd

    .line 648
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xe

    .line 649
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xf

    aput-object v1, v5, v4

    const/16 v4, 0x10

    aput-object v2, v5, v4

    const/16 v4, 0x11

    .line 652
    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x12

    .line 653
    invoke-static/range {p19 .. p19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x13

    .line 654
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v4

    .line 634
    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    .line 655
    return-void
.end method

.method static fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 26
    .param p0, "config"    # Landroid/os/BatterySaverPolicyConfig;

    .line 658
    if-nez p0, :cond_0

    .line 659
    const-string v0, "BatterySaverPolicy"

    const-string v1, "Null config passed down to BatterySaverPolicy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    .line 664
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    move-result-object v0

    .line 665
    .local v0, "deviceSpecificSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 666
    const-string v1, ""

    const-string v2, "cpufreq-i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 667
    .local v2, "cpuFreqInteractive":Ljava/lang/String;
    nop

    .line 668
    const-string v3, "cpufreq-n"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 670
    .local v1, "cpuFreqNoninteractive":Ljava/lang/String;
    new-instance v24, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v3, v24

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdjustBrightnessFactor()F

    move-result v4

    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdvertiseIsEnabled()Z

    move-result v5

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferFullBackup()Z

    move-result v6

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferKeyValueBackup()Z

    move-result v7

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAnimation()Z

    move-result v8

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAod()Z

    move-result v9

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableLaunchBoost()Z

    move-result v10

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableOptionalSensors()Z

    move-result v11

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableSoundTrigger()Z

    move-result v12

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableVibration()Z

    move-result v13

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableAdjustBrightness()Z

    move-result v14

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableDataSaver()Z

    move-result v15

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableFirewall()Z

    move-result v16

    .line 684
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableNightMode()Z

    move-result v17

    .line 685
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableQuickDoze()Z

    move-result v18

    move-object/from16 v25, v0

    .end local v0    # "deviceSpecificSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v25, "deviceSpecificSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 687
    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v19

    new-instance v0, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 689
    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v20

    .line 690
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceAllAppsStandby()Z

    move-result v21

    .line 691
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceBackgroundCheck()Z

    move-result v22

    .line 692
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getLocationMode()I

    move-result v23

    invoke-direct/range {v3 .. v23}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    .line 670
    return-object v24
.end method

.method static fromSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 1
    .param p0, "settings"    # Ljava/lang/String;
    .param p1, "deviceSpecificSettings"    # Ljava/lang/String;

    .line 697
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    return-object v0
.end method

.method static fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 43
    .param p0, "settings"    # Ljava/lang/String;
    .param p1, "deviceSpecificSettings"    # Ljava/lang/String;
    .param p2, "defaultPolicy"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 702
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v4, 0x2c

    invoke-direct {v0, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    move-object v4, v0

    .line 706
    .local v4, "parser":Landroid/util/KeyValueListParser;
    const-string v5, "BatterySaverPolicy"

    const-string v6, ""

    if-nez v2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    goto :goto_1

    .line 707
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 708
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad device specific battery saver constants: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v0, "cpufreq-i"

    invoke-virtual {v4, v0, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 713
    .local v7, "cpuFreqInteractive":Ljava/lang/String;
    const-string v0, "cpufreq-n"

    invoke-virtual {v4, v0, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 717
    .local v8, "cpuFreqNoninteractive":Ljava/lang/String;
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v6, v1

    :goto_2
    :try_start_1
    invoke-virtual {v4, v6}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 720
    goto :goto_3

    .line 718
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 719
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad battery saver constants: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    const-string v5, "adjust_brightness_factor"

    invoke-virtual {v4, v5, v0}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 724
    .local v0, "adjustBrightnessFactor":F
    iget-boolean v5, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    const-string v6, "advertise_is_enabled"

    invoke-virtual {v4, v6, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 726
    .local v5, "advertiseIsEnabled":Z
    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    const-string v9, "fullbackup_deferred"

    invoke-virtual {v4, v9, v6}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 728
    .local v6, "deferFullBackup":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    const-string/jumbo v10, "keyvaluebackup_deferred"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 730
    .local v30, "deferKeyValueBackup":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    const-string v10, "animation_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 732
    .local v31, "disableAnimation":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    const-string v10, "aod_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 733
    .local v32, "disableAod":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    const-string/jumbo v10, "launch_boost_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    .line 735
    .local v33, "disableLaunchBoost":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    const-string/jumbo v10, "optional_sensors_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 737
    .local v34, "disableOptionalSensors":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    const-string/jumbo v10, "soundtrigger_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 739
    .local v35, "disableSoundTrigger":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    const-string/jumbo v10, "vibration_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 741
    .local v36, "disableVibrationConfig":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    xor-int/lit8 v9, v9, 0x1

    const-string v10, "adjust_brightness_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/lit8 v20, v9, 0x1

    .line 743
    .local v20, "enableAdjustBrightness":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    xor-int/lit8 v9, v9, 0x1

    const-string v10, "datasaver_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/lit8 v21, v9, 0x1

    .line 745
    .local v21, "enableDataSaver":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    xor-int/lit8 v9, v9, 0x1

    const-string v10, "firewall_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/lit8 v22, v9, 0x1

    .line 747
    .local v22, "enableFirewall":Z
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    const-string v10, "enable_night_mode"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .local v37, "enableNightMode":Z
    move/from16 v23, v37

    .line 749
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    const-string/jumbo v10, "quick_doze_enabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .local v38, "enableQuickDoze":Z
    move/from16 v24, v38

    .line 751
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    const-string v10, "force_all_apps_standby"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .local v39, "forceAllAppsStandby":Z
    move/from16 v27, v39

    .line 753
    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    const-string v10, "force_background_check"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .local v40, "forceBackgroundCheck":Z
    move/from16 v28, v40

    .line 755
    iget v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    const-string v10, "gps_mode"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v41

    .local v41, "locationMode":I
    move/from16 v29, v41

    .line 757
    new-instance v42, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v9, v42

    new-instance v10, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 775
    invoke-virtual {v10, v7}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v25

    new-instance v10, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 777
    invoke-virtual {v10, v8}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v26

    move v10, v0

    move v11, v5

    move v12, v6

    move/from16 v13, v30

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v16, v33

    move/from16 v17, v34

    move/from16 v18, v35

    move/from16 v19, v36

    invoke-direct/range {v9 .. v29}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    .line 757
    return-object v42
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 786
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 787
    :cond_0
    instance-of v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 788
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 789
    .local v1, "other":Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    iget v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    .line 807
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    .line 808
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 789
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 813
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    return v0
.end method
