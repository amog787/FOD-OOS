.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_assertFsverityRootHashMatches:I = 0x23

.field static final TRANSACTION_checkProfileSize:I = 0x2c

.field static final TRANSACTION_clearAppData:I = 0x6

.field static final TRANSACTION_clearAppProfiles:I = 0x14

.field static final TRANSACTION_compileLayouts:I = 0xf

.field static final TRANSACTION_copySystemProfile:I = 0x13

.field static final TRANSACTION_createAppData:I = 0x3

.field static final TRANSACTION_createOatDir:I = 0x1e

.field static final TRANSACTION_createProfileSnapshot:I = 0x16

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteOdex:I = 0x21

.field static final TRANSACTION_destroyAppData:I = 0x7

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2b

.field static final TRANSACTION_destroyAppProfiles:I = 0x15

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x17

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0xe

.field static final TRANSACTION_dumpProfiles:I = 0x12

.field static final TRANSACTION_fixupAppData:I = 0x8

.field static final TRANSACTION_freeCache:I = 0x1c

.field static final TRANSACTION_getAppSize:I = 0x9

.field static final TRANSACTION_getExternalSize:I = 0xb

.field static final TRANSACTION_getUserSize:I = 0xa

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x25

.field static final TRANSACTION_idmap:I = 0x18

.field static final TRANSACTION_installApkVerity:I = 0x22

.field static final TRANSACTION_invalidateMounts:I = 0x26

.field static final TRANSACTION_isQuotaSupported:I = 0x27

.field static final TRANSACTION_linkFile:I = 0x1f

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x1d

.field static final TRANSACTION_markBootComplete:I = 0x1b

.field static final TRANSACTION_mergeProfiles:I = 0x11

.field static final TRANSACTION_migrateAppData:I = 0x5

.field static final TRANSACTION_migrateLegacyObbData:I = 0x2e

.field static final TRANSACTION_moveAb:I = 0x20

.field static final TRANSACTION_moveCompleteApp:I = 0xd

.field static final TRANSACTION_prepareAppProfile:I = 0x28

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x24

.field static final TRANSACTION_removeIdmap:I = 0x19

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2a

.field static final TRANSACTION_restoreconAppData:I = 0x4

.field static final TRANSACTION_rmPackageDir:I = 0x1a

.field static final TRANSACTION_rmdex:I = 0x10

.field static final TRANSACTION_setAppQuota:I = 0xc

.field static final TRANSACTION_setBackupRestoreState:I = 0x2d

.field static final TRANSACTION_snapshotAppData:I = 0x29


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 184
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 196
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    .line 199
    :cond_1
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IInstalld;
    .locals 1

    .line 2019
    sget-object v0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IInstalld;)Z
    .locals 1
    .param p0, "impl"    # Landroid/os/IInstalld;

    .line 2012
    sget-object v0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2013
    sput-object p0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    .line 2014
    const/4 v0, 0x1

    return v0

    .line 2016
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 203
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    move-object/from16 v11, p0

    move/from16 v10, p1

    move-object/from16 v9, p2

    move-object/from16 v8, p3

    const-string v15, "android.os.IInstalld"

    .line 208
    .local v15, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v17, 0x1

    if-eq v10, v0, :cond_1

    packed-switch v10, :pswitch_data_0

    .line 903
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 896
    :pswitch_0
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    return v17

    .line 886
    :pswitch_1
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 889
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->setBackupRestoreState(I)Z

    move-result v1

    .line 890
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    return v17

    .line 872
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 876
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->checkProfileSize(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 880
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    return v17

    .line 853
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 857
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 859
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 861
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 863
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 865
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 866
    .local v20, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-wide/from16 v4, v18

    move/from16 v6, v16

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    return v17

    .line 832
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v16    # "_arg4":I
    .end local v18    # "_arg3":J
    .end local v20    # "_arg5":I
    :pswitch_4
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 836
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 838
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 840
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 842
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 844
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 846
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 847
    .local v20, "_arg6":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-object/from16 v4, v16

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    return v17

    .line 814
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_5
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 818
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 820
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 822
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 824
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 825
    .local v14, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 826
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 828
    return v17

    .line 794
    .end local v0    # "_result":J
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    :pswitch_6
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 798
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 800
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 802
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 804
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 806
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 807
    .local v18, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v12

    move v3, v13

    move-object v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 808
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    return v17

    .line 784
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    .line 788
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    return v17

    .line 777
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    return v17

    .line 759
    :pswitch_9
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 763
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 767
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 769
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 770
    .local v14, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 771
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 773
    return v17

    .line 739
    .end local v0    # "_result":[B
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg4":I
    :pswitch_a
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 743
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 745
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 747
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 749
    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 751
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 752
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object/from16 v5, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 753
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    return v17

    .line 728
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":[Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_b
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 733
    .local v1, "_arg1":[B
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->assertFsverityRootHashMatches(Ljava/lang/String;[B)V

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    return v17

    .line 715
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    :pswitch_c
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 721
    .local v1, "_arg1":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 722
    .local v2, "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    return v17

    .line 702
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/io/FileDescriptor;
    .end local v2    # "_arg2":I
    :pswitch_d
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    return v17

    .line 689
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 695
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 696
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    return v17

    .line 676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 682
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 683
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    return v17

    .line 665
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    return v17

    .line 650
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 654
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 658
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .local v3, "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    return v17

    .line 635
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_12
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 639
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 641
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 643
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 644
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v12

    move-wide/from16 v4, v18

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JJI)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    return v17

    .line 626
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":J
    .end local v14    # "_arg3":I
    .end local v18    # "_arg2":J
    :pswitch_13
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->markBootComplete(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    return v17

    .line 617
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    return v17

    .line 608
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->removeIdmap(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    return v17

    .line 595
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 599
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->idmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    return v17

    .line 584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_17
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    return v17

    .line 568
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 572
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 578
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    return v17

    .line 559
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_19
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    return v17

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    return v17

    .line 532
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 538
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 541
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 542
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    return v17

    .line 516
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1c
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 526
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    return v17

    .line 502
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1d
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 506
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 509
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 510
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    return v17

    .line 491
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1e
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    return v17

    .line 475
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 484
    .local v3, "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 485
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    return v17

    .line 436
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_20
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 440
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 442
    .local v19, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 444
    .local v20, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 446
    .local v21, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 448
    .local v22, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 450
    .local v23, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 452
    .local v24, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 454
    .local v25, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 456
    .local v26, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 458
    .local v27, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 460
    .local v28, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v12, v17

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v12, v0

    .line 462
    .local v12, "_arg11":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg12":I
    move/from16 v13, v29

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg13":Ljava/lang/String;
    move-object/from16 v14, v30

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object v7, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    .local v31, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v31

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg15":Ljava/lang/String;
    move-object/from16 v16, v32

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v33, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .local v33, "descriptor":Ljava/lang/String;
    move/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    invoke-virtual/range {v0 .. v16}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    return v17

    .line 415
    .end local v12    # "_arg11":Z
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v20    # "_arg2":Ljava/lang/String;
    .end local v21    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg4":I
    .end local v23    # "_arg5":Ljava/lang/String;
    .end local v24    # "_arg6":I
    .end local v25    # "_arg7":Ljava/lang/String;
    .end local v26    # "_arg8":Ljava/lang/String;
    .end local v27    # "_arg9":Ljava/lang/String;
    .end local v28    # "_arg10":Ljava/lang/String;
    .end local v29    # "_arg12":I
    .end local v30    # "_arg13":Ljava/lang/String;
    .end local v31    # "_arg14":Ljava/lang/String;
    .end local v32    # "_arg15":Ljava/lang/String;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move-object/from16 v33, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    move-object/from16 v8, p2

    move-object/from16 v9, v33

    .end local v33    # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 419
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 421
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 425
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 427
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 429
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 430
    .local v16, "_arg6":I
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    return v17

    .line 400
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg4":I
    .end local v16    # "_arg6":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_22
    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 404
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 406
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 408
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 409
    .local v11, "_arg3":J
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v10

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    return v17

    .line 384
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v11    # "_arg3":J
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 392
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 393
    .local v3, "_arg3":[I
    move-object/from16 v10, p0

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 394
    .local v4, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    move-object/from16 v11, p3

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 396
    return v17

    .line 368
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":[J
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 377
    .restart local v3    # "_arg3":[I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 378
    .restart local v4    # "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 380
    return v17

    .line 346
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":[J
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 354
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 356
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 358
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v18

    .line 360
    .local v18, "_arg5":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    .line 361
    .local v19, "_arg6":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 362
    .local v0, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 364
    return v17

    .line 335
    .end local v0    # "_result":[J
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":[Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v16    # "_arg4":I
    .end local v18    # "_arg5":[J
    .end local v19    # "_arg6":[Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_26
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    return v17

    .line 318
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 326
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 328
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 329
    .local v15, "_arg4":J
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move v4, v14

    move-wide v5, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    return v17

    .line 301
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_28
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 305
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 307
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 309
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 311
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 312
    .local v15, "_arg4":J
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move v4, v14

    move-wide v5, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    return v17

    .line 286
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 295
    .local v3, "_arg3":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    return v17

    .line 267
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 271
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 273
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 275
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 277
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 279
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 280
    .local v16, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    return v17

    .line 245
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v16    # "_arg5":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 249
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 251
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 253
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 255
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 257
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 259
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 260
    .local v19, "_arg6":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J

    move-result-wide v0

    .line 261
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 263
    return v17

    .line 232
    .end local v0    # "_result":J
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v16    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .restart local v2    # "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    return v17

    .line 217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .restart local v3    # "_arg3":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    return v17

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :cond_1
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
