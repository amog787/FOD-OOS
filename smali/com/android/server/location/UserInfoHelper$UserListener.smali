.class public interface abstract Lcom/android/server/location/UserInfoHelper$UserListener;
.super Ljava/lang/Object;
.source "UserInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/UserInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/UserInfoHelper$UserListener$UserChange;
    }
.end annotation


# static fields
.field public static final CURRENT_USER_CHANGED:I = 0x1

.field public static final USER_STARTED:I = 0x2

.field public static final USER_STOPPED:I = 0x3


# virtual methods
.method public abstract onUserChanged(II)V
.end method
