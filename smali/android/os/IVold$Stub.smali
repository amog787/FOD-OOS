.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final TRANSACTION_abortChanges:I = 0x40

.field static final TRANSACTION_abortFuse:I = 0x2

.field static final TRANSACTION_abortIdleMaint:I = 0x1d

.field static final TRANSACTION_addAppIds:I = 0xa

.field static final TRANSACTION_addSandboxIds:I = 0xb

.field static final TRANSACTION_addUserKeyAuth:I = 0x33

.field static final TRANSACTION_benchmark:I = 0x12

.field static final TRANSACTION_bindMount:I = 0x51

.field static final TRANSACTION_checkEncryption:I = 0x13

.field static final TRANSACTION_clearUserKeyAuth:I = 0x34

.field static final TRANSACTION_commitChanges:I = 0x41

.field static final TRANSACTION_createObb:I = 0x19

.field static final TRANSACTION_createStubVolume:I = 0x4a

.field static final TRANSACTION_createUserKey:I = 0x31

.field static final TRANSACTION_destroyObb:I = 0x1a

.field static final TRANSACTION_destroySandboxForApp:I = 0x3b

.field static final TRANSACTION_destroyStubVolume:I = 0x4b

.field static final TRANSACTION_destroyUserKey:I = 0x32

.field static final TRANSACTION_destroyUserStorage:I = 0x39

.field static final TRANSACTION_encryptFstab:I = 0x30

.field static final TRANSACTION_fbeEnable:I = 0x2b

.field static final TRANSACTION_fdeChangePassword:I = 0x24

.field static final TRANSACTION_fdeCheckPassword:I = 0x20

.field static final TRANSACTION_fdeClearPassword:I = 0x2a

.field static final TRANSACTION_fdeComplete:I = 0x22

.field static final TRANSACTION_fdeEnable:I = 0x23

.field static final TRANSACTION_fdeGetField:I = 0x26

.field static final TRANSACTION_fdeGetPassword:I = 0x29

.field static final TRANSACTION_fdeGetPasswordType:I = 0x28

.field static final TRANSACTION_fdeRestart:I = 0x21

.field static final TRANSACTION_fdeSetField:I = 0x27

.field static final TRANSACTION_fdeVerifyPassword:I = 0x25

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x35

.field static final TRANSACTION_fixupAppDir:I = 0x18

.field static final TRANSACTION_forgetPartition:I = 0xe

.field static final TRANSACTION_format:I = 0x11

.field static final TRANSACTION_fstrim:I = 0x1b

.field static final TRANSACTION_incFsEnabled:I = 0x4d

.field static final TRANSACTION_initUser0:I = 0x2d

.field static final TRANSACTION_isCheckpointing:I = 0x3f

.field static final TRANSACTION_isConvertibleToFbe:I = 0x2e

.field static final TRANSACTION_lockUserKey:I = 0x37

.field static final TRANSACTION_markBootAttempt:I = 0x45

.field static final TRANSACTION_monitor:I = 0x3

.field static final TRANSACTION_mount:I = 0xf

.field static final TRANSACTION_mountAppFuse:I = 0x1e

.field static final TRANSACTION_mountDefaultEncrypted:I = 0x2c

.field static final TRANSACTION_mountFstab:I = 0x2f

.field static final TRANSACTION_mountIncFs:I = 0x4e

.field static final TRANSACTION_moveStorage:I = 0x14

.field static final TRANSACTION_needsCheckpoint:I = 0x3d

.field static final TRANSACTION_needsRollback:I = 0x3e

.field static final TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final TRANSACTION_onUserAdded:I = 0x6

.field static final TRANSACTION_onUserRemoved:I = 0x7

.field static final TRANSACTION_onUserStarted:I = 0x8

.field static final TRANSACTION_onUserStopped:I = 0x9

.field static final TRANSACTION_openAppFuseFile:I = 0x4c

.field static final TRANSACTION_partition:I = 0xd

.field static final TRANSACTION_prepareCheckpoint:I = 0x42

.field static final TRANSACTION_prepareSandboxForApp:I = 0x3a

.field static final TRANSACTION_prepareUserStorage:I = 0x38

.field static final TRANSACTION_remountAppStorageDirs:I = 0x16

.field static final TRANSACTION_remountUid:I = 0x15

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_resetCheckpoint:I = 0x49

.field static final TRANSACTION_restoreCheckpoint:I = 0x43

.field static final TRANSACTION_restoreCheckpointPart:I = 0x44

.field static final TRANSACTION_runIdleMaint:I = 0x1c

.field static final TRANSACTION_setIncFsMountOptions:I = 0x50

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setupAppDir:I = 0x17

.field static final TRANSACTION_shutdown:I = 0x5

.field static final TRANSACTION_startCheckpoint:I = 0x3c

.field static final TRANSACTION_supportsBlockCheckpoint:I = 0x47

.field static final TRANSACTION_supportsCheckpoint:I = 0x46

.field static final TRANSACTION_supportsFileCheckpoint:I = 0x48

.field static final TRANSACTION_unlockUserKey:I = 0x36

.field static final TRANSACTION_unmount:I = 0x10

.field static final TRANSACTION_unmountAppFuse:I = 0x1f

.field static final TRANSACTION_unmountIncFs:I = 0x4f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 282
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 283
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVold$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 291
    if-nez p0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 295
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_1

    .line 296
    move-object v1, v0

    check-cast v1, Landroid/os/IVold;

    return-object v1

    .line 298
    :cond_1
    new-instance v1, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IVold;
    .locals 1

    .line 2896
    sget-object v0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IVold;)Z
    .locals 2
    .param p0, "impl"    # Landroid/os/IVold;

    .line 2886
    sget-object v0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    if-nez v0, :cond_1

    .line 2889
    if-eqz p0, :cond_0

    .line 2890
    sput-object p0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    .line 2891
    const/4 v0, 0x1

    return v0

    .line 2893
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2887
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 302
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IVold"

    .line 307
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_6

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    .line 1155
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1144
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    return v12

    .line 1128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .local v1, "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    goto :goto_0

    .line 1134
    .end local v1    # "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :cond_0
    const/4 v1, 0x0

    .line 1137
    .restart local v1    # "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v12

    .line 1138
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v7, v1, v0}, Landroid/os/IVold$Stub;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;Z)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    return v12

    .line 1119
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->unmountIncFs(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    return v12

    .line 1099
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1106
    .local v3, "_arg2":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/os/IVold$Stub;->mountIncFs(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v4

    .line 1107
    .local v4, "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    if-eqz v4, :cond_2

    .line 1109
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    invoke-virtual {v4, v10, v12}, Landroid/os/incremental/IncrementalFileSystemControlParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1113
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    :goto_1
    return v12

    .line 1091
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->incFsEnabled()Z

    move-result v0

    .line 1093
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    return v12

    .line 1075
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1079
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1081
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1084
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1085
    .local v4, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1087
    return v12

    .line 1066
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Ljava/io/FileDescriptor;
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyStubVolume(Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    return v12

    .line 1046
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1050
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1052
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1054
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1056
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1058
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1059
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVold$Stub;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1062
    return v12

    .line 1039
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->resetCheckpoint()V

    .line 1041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    return v12

    .line 1031
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsFileCheckpoint()Z

    move-result v0

    .line 1033
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    return v12

    .line 1023
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsBlockCheckpoint()Z

    move-result v0

    .line 1025
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    return v12

    .line 1015
    .end local v0    # "_result":Z
    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 1017
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    return v12

    .line 1008
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->markBootAttempt()V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    return v12

    .line 997
    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1002
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    return v12

    .line 988
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 991
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->restoreCheckpoint(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    return v12

    .line 981
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->prepareCheckpoint()V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    return v12

    .line 974
    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->commitChanges()V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    return v12

    .line 963
    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v12

    .line 968
    .local v0, "_arg1":Z
    :cond_3
    invoke-virtual {v7, v1, v0}, Landroid/os/IVold$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    return v12

    .line 955
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->isCheckpointing()Z

    move-result v0

    .line 957
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    return v12

    .line 947
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsRollback()Z

    move-result v0

    .line 949
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    return v12

    .line 939
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsCheckpoint()Z

    move-result v0

    .line 941
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    return v12

    .line 930
    .end local v0    # "_result":Z
    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->startCheckpoint(I)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    return v12

    .line 917
    .end local v0    # "_arg0":I
    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 924
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    return v12

    .line 902
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 906
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 908
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 911
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    return v12

    .line 889
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 893
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 895
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 896
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    return v12

    .line 874
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 878
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 880
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 882
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 883
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    return v12

    .line 865
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->lockUserKey(I)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    return v12

    .line 850
    .end local v0    # "_arg0":I
    :pswitch_1b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 859
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    return v12

    .line 841
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 844
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->fixateNewestUserKeyAuth(I)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    return v12

    .line 826
    .end local v0    # "_arg0":I
    :pswitch_1d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 830
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 832
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 834
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 835
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    return v12

    .line 811
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 815
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 817
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 820
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    return v12

    .line 802
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 805
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyUserKey(I)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    return v12

    .line 789
    .end local v0    # "_arg0":I
    :pswitch_20
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 793
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 795
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v12

    .line 796
    .local v0, "_arg2":Z
    :cond_4
    invoke-virtual {v7, v1, v2, v0}, Landroid/os/IVold$Stub;->createUserKey(IIZ)V

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    return v12

    .line 778
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_21
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    return v12

    .line 767
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_22
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 771
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 772
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    return v12

    .line 759
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->isConvertibleToFbe()Z

    move-result v0

    .line 761
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    return v12

    .line 752
    .end local v0    # "_result":Z
    :pswitch_24
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    return v12

    .line 745
    :pswitch_25
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->mountDefaultEncrypted()V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    return v12

    .line 738
    :pswitch_26
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    return v12

    .line 731
    :pswitch_27
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeClearPassword()V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    return v12

    .line 723
    :pswitch_28
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeGetPassword()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    return v12

    .line 715
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeGetPasswordType()I

    move-result v0

    .line 717
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    return v12

    .line 704
    .end local v0    # "_result":I
    :pswitch_2a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    return v12

    .line 694
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 697
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    return v12

    .line 685
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 688
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->fdeVerifyPassword(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    return v12

    .line 672
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 676
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    return v12

    .line 659
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 663
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 665
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 666
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->fdeEnable(ILjava/lang/String;I)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    return v12

    .line 651
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_2f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeComplete()I

    move-result v0

    .line 653
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    return v12

    .line 644
    .end local v0    # "_result":I
    :pswitch_30
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeRestart()V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    return v12

    .line 635
    :pswitch_31
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->fdeCheckPassword(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    return v12

    .line 624
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->unmountAppFuse(II)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    return v12

    .line 612
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_33
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 618
    .local v2, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 620
    return v12

    .line 603
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/io/FileDescriptor;
    :pswitch_34
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 606
    .local v0, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    return v12

    .line 594
    .end local v0    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_35
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 597
    .restart local v0    # "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->runIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    return v12

    .line 583
    .end local v0    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_36
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 587
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 588
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    return v12

    .line 574
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_37
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v12

    .line 560
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_38
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 567
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    return v12

    .line 549
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->fixupAppDir(Ljava/lang/String;I)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    return v12

    .line 538
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->setupAppDir(Ljava/lang/String;I)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    return v12

    .line 525
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 529
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    return v12

    .line 514
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_3c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 518
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    return v12

    .line 501
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 508
    .local v2, "_arg2":Landroid/os/IVoldTaskListener;
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    return v12

    .line 492
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IVoldTaskListener;
    :pswitch_3e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->checkEncryption(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v12

    .line 481
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 485
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 486
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    return v12

    .line 470
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_40
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    return v12

    .line 461
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_41
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    return v12

    .line 446
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_42
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v3

    .line 455
    .local v3, "_arg3":Landroid/os/IVoldMountCallback;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    return v12

    .line 435
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IVoldMountCallback;
    :pswitch_43
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    return v12

    .line 422
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 426
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 429
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    return v12

    .line 413
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_45
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v12

    .line 416
    .local v0, "_arg0":Z
    :cond_5
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    return v12

    .line 402
    .end local v0    # "_arg0":Z
    :pswitch_46
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 406
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->addSandboxIds([I[Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    return v12

    .line 391
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_47
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 396
    .local v1, "_arg1":[I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->addAppIds([Ljava/lang/String;[I)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    return v12

    .line 382
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":[I
    :pswitch_48
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    return v12

    .line 373
    .end local v0    # "_arg0":I
    :pswitch_49
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 376
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    return v12

    .line 364
    .end local v0    # "_arg0":I
    :pswitch_4a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    return v12

    .line 353
    .end local v0    # "_arg0":I
    :pswitch_4b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 358
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->onUserAdded(II)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    return v12

    .line 346
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    return v12

    .line 339
    :pswitch_4d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->reset()V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    return v12

    .line 332
    :pswitch_4e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    return v12

    .line 325
    :pswitch_4f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->abortFuse()V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    return v12

    .line 316
    :pswitch_50
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v0

    .line 319
    .local v0, "_arg0":Landroid/os/IVoldListener;
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    return v12

    .line 311
    .end local v0    # "_arg0":Landroid/os/IVoldListener;
    :cond_6
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
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
