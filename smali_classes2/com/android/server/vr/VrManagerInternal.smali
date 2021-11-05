.class public abstract Lcom/android/server/vr/VrManagerInternal;
.super Ljava/lang/Object;
.source "VrManagerInternal.java"


# static fields
.field public static final NO_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
.end method

.method public abstract getVr2dDisplayId()I
.end method

.method public abstract hasVrPackage(Landroid/content/ComponentName;I)I
.end method

.method public abstract isCurrentVrListener(Ljava/lang/String;I)Z
.end method

.method public abstract onScreenStateChanged(Z)V
.end method

.method public abstract setPersistentVrModeEnabled(Z)V
.end method

.method public abstract setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
.end method

.method public abstract setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
.end method
