.class public interface abstract Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;
.super Ljava/lang/Object;
.source "IOpHeytapBusinessManagerService.java"


# virtual methods
.method public abstract runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract runShareBusiness(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
.end method

.method public abstract runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;
.end method

.method public abstract shouldRunLoginBusiness(Ljava/lang/String;)Z
.end method

.method public abstract shouldRunShareBusiness(Ljava/lang/String;)Z
.end method

.method public abstract shouldRunWeChatPayBusiness(Ljava/lang/String;)Z
.end method
