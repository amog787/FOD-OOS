.class public interface abstract Landroid/os/IIdmap2;
.super Ljava/lang/Object;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIdmap2$Stub;,
        Landroid/os/IIdmap2$Default;
    }
.end annotation


# static fields
.field public static final POLICY_ODM_PARTITION:I = 0x20

.field public static final POLICY_OEM_PARTITION:I = 0x40

.field public static final POLICY_PRODUCT_PARTITION:I = 0x8

.field public static final POLICY_PUBLIC:I = 0x1

.field public static final POLICY_SIGNATURE:I = 0x10

.field public static final POLICY_SYSTEM_PARTITION:I = 0x2

.field public static final POLICY_VENDOR_PARTITION:I = 0x4


# virtual methods
.method public abstract createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeIdmap(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract verifyIdmap(Ljava/lang/String;IZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
