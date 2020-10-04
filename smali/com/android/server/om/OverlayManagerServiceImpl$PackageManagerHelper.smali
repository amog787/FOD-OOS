.class interface abstract Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PackageManagerHelper"
.end annotation


# virtual methods
.method public abstract getOverlayPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
.end method

.method public abstract signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
