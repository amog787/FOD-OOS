.class public interface abstract Lcom/android/server/uri/UriGrantsManagerInternal;
.super Ljava/lang/Object;
.source "UriGrantsManagerInternal.java"


# virtual methods
.method public abstract checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
.end method

.method public abstract checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
.end method

.method public abstract checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;
.end method

.method public abstract checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
.end method

.method public abstract grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
.end method

.method public abstract newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
.end method

.method public abstract removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
.end method

.method public abstract revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
.end method

.method public abstract revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
.end method
